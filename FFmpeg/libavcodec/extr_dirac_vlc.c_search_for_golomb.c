
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int residual ;
typedef int int32_t ;
struct TYPE_3__ {int* ready; size_t ready_num; int leftover; int leftover_bits; int need_s; } ;
typedef TYPE_1__ DiracGolombLUT ;


 int READ_BIT (int) ;
 int RSIZE_BITS ;

__attribute__((used)) static inline void search_for_golomb(DiracGolombLUT *l, residual r, int bits)
{
    int r_count = RSIZE_BITS - 1;
    int bits_start, bits_tot = bits, need_sign = 0;



    while (1) {
        int32_t coef = 1;
        bits_start = (RSIZE_BITS - 1) - r_count;

        while (1) {
            if (!bits--)
                goto leftover;
            if ((((r) >> (r_count--)) & 1))
                break;

            coef <<= 1;

            if (!bits--)
                goto leftover;
            coef |= (((r) >> (r_count--)) & 1);
        }

        l->ready[l->ready_num] = coef - 1;
        if (l->ready[l->ready_num]) {
            if (!bits--) {
                need_sign = 1;
                goto leftover;
            }
            l->ready[l->ready_num] *= (((r) >> (r_count--)) & 1) ? -1 : +1;
        }
        l->ready_num++;

        if (!bits)
            return;
    }

    leftover:
        l->leftover = r << bits_start;
        l->leftover_bits = bits_tot - bits_start;
        l->need_s = need_sign;
}
