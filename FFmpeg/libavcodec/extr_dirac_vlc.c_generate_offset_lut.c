
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int preamble_bits; int preamble; int sign; } ;
typedef TYPE_1__ DiracGolombLUT ;


 int CONVERT_TO_RESIDUE (int,int) ;
 int INIT_RESIDUE (int) ;
 scalar_t__ LUT_BITS ;
 int LUT_SIZE ;
 int RSIZE_BITS ;
 int SET_RESIDUE (int,int,scalar_t__) ;
 int res ;
 int search_for_golomb (TYPE_1__*,int,scalar_t__) ;

__attribute__((used)) static void generate_offset_lut(DiracGolombLUT *lut, int off)
{
    int idx;
    for (idx = 0; idx < LUT_SIZE; idx++) {
        DiracGolombLUT *l = &lut[idx];

        INIT_RESIDUE(res);
        SET_RESIDUE(res, idx, LUT_BITS);

        l->preamble_bits = off;
        if (off) {
            l->preamble = CONVERT_TO_RESIDUE(res >> (RSIZE_BITS - off), off);
            l->sign = ((l->preamble >> (RSIZE_BITS - l->preamble_bits)) & 1) ? -1 : +1;
        } else {
            l->preamble = 0;
            l->sign = 1;
        }

        search_for_golomb(l, res << off, LUT_BITS - off);
    }
}
