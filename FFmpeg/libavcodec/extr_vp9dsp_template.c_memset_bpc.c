
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;



__attribute__((used)) static inline void memset_bpc(uint16_t *dst, int val, int len) {
    int n;
    for (n = 0; n < len; n++) {
        dst[n] = val;
    }
}
