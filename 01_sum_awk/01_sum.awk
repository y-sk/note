BEGIN {
} {
    _idx = $1;
    _val = $2;
    if( is_number(_val) ) {
        sum[_idx]+=_val;
    } else {
        printf("is not number : %s => %s%s", _idx, _val, ORS);
    }
}
END {
    for (key in sum) {
        print key, sum[key];
    }
}

function is_number(val) {
    return val ~/^[0-9]+$/;
}
