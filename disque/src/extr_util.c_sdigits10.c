
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint32_t ;
typedef scalar_t__ int64_t ;


 scalar_t__ LLONG_MAX ;
 scalar_t__ LLONG_MIN ;
 scalar_t__ digits10 (scalar_t__) ;

uint32_t sdigits10(int64_t v) {
    if (v < 0) {

        uint64_t uv = (v != LLONG_MIN) ?
                      (uint64_t)-v : ((uint64_t) LLONG_MAX)+1;
        return digits10(uv)+1;
    } else {
        return digits10(v);
    }
}
