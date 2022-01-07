
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int preamble; int preamble_bits; int leftover_bits; int need_s; int sign; void* leftover; } ;
typedef TYPE_1__ DiracGolombLUT ;


 void* CONVERT_TO_RESIDUE (int,int) ;
 int INIT_RESIDUE (int) ;
 int LUT_BITS ;
 int LUT_SIZE ;
 int RSIZE_BITS ;
 int SET_RESIDUE (int,int,int) ;
 int res ;
 int search_for_golomb (TYPE_1__*,int,int) ;

__attribute__((used)) static void generate_parity_lut(DiracGolombLUT *lut, int even)
{
    int idx;
    for (idx = 0; idx < LUT_SIZE; idx++) {
        DiracGolombLUT *l = &lut[idx];
        int symbol_end_loc = -1;
        uint32_t code;
        int i;

        INIT_RESIDUE(res);
        SET_RESIDUE(res, idx, LUT_BITS);

        for (i = 0; i < LUT_BITS; i++) {
            const int cond = even ? (i & 1) : !(i & 1);
            if (((res >> (RSIZE_BITS - i - 1)) & 1) && cond) {
                symbol_end_loc = i + 2;
                break;
            }
        }

        if (symbol_end_loc < 0 || symbol_end_loc > LUT_BITS) {
            l->preamble = 0;
            l->preamble_bits = 0;
            l->leftover_bits = LUT_BITS;
            l->leftover = CONVERT_TO_RESIDUE(idx, l->leftover_bits);
            if (even)
                l->need_s = idx & 1;
            continue;
        }


        code = idx >> ((LUT_BITS - 1) - (symbol_end_loc - 1));
        code &= ((1 << LUT_BITS) - 1) >> (LUT_BITS - symbol_end_loc);
        l->preamble_bits = symbol_end_loc;
        l->preamble = CONVERT_TO_RESIDUE(code, l->preamble_bits);
        l->sign = ((l->preamble >> (RSIZE_BITS - l->preamble_bits)) & 1) ? -1 : +1;

        search_for_golomb(l, res << symbol_end_loc, LUT_BITS - symbol_end_loc);
    }
}
