
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static inline int decode_bits(uint32_t bits, uint32_t mask, bool is_twos_compl)
{
    int ret;
    if (bits & (~(mask >> 1) & mask)) {

        if (is_twos_compl) {
            ret = -(((~bits) + 1) & (mask >> 1));
        } else {
            ret = -(bits & (mask >> 1));
        }
    } else {

        ret = bits & (mask >> 1);
    }
    return ret;
}
