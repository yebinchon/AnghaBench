
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int prev_dc_stride; int* prev_dc; int* qmat; int sign_model; int ac_model; int dc_model; } ;
typedef int RangeCoder ;
typedef TYPE_1__ DCTBlockCoder ;


 scalar_t__ FFABS (int) ;
 int decode_coeff (int *,int *) ;
 int* ff_zigzag_direct ;
 int memset (int*,int ,int) ;
 int rac_get_bits (int *,int) ;
 int rac_get_model256_sym (int *,int *) ;
 int rac_get_model2_sym (int *,int *) ;

__attribute__((used)) static int decode_dct(RangeCoder *c, DCTBlockCoder *bc, int *block,
                      int bx, int by)
{
    int skip, val, sign, pos = 1, zz_pos, dc;
    int blk_pos = bx + by * bc->prev_dc_stride;

    memset(block, 0, sizeof(*block) * 64);

    dc = decode_coeff(c, &bc->dc_model);
    if (by) {
        if (bx) {
            int l, tl, t;

            l = bc->prev_dc[blk_pos - 1];
            tl = bc->prev_dc[blk_pos - 1 - bc->prev_dc_stride];
            t = bc->prev_dc[blk_pos - bc->prev_dc_stride];

            if (FFABS(t - tl) <= FFABS(l - tl))
                dc += l;
            else
                dc += t;
        } else {
            dc += bc->prev_dc[blk_pos - bc->prev_dc_stride];
        }
    } else if (bx) {
        dc += bc->prev_dc[bx - 1];
    }
    bc->prev_dc[blk_pos] = dc;
    block[0] = dc * bc->qmat[0];

    while (pos < 64) {
        val = rac_get_model256_sym(c, &bc->ac_model);
        if (!val)
            return 0;
        if (val == 0xF0) {
            pos += 16;
            continue;
        }
        skip = val >> 4;
        val = val & 0xF;
        if (!val)
            return -1;
        pos += skip;
        if (pos >= 64)
            return -1;

        sign = rac_get_model2_sym(c, &bc->sign_model);
        if (val > 1) {
            val--;
            val = (1 << val) + rac_get_bits(c, val);
        }
        if (!sign)
            val = -val;

        zz_pos = ff_zigzag_direct[pos];
        block[zz_pos] = val * bc->qmat[zz_pos];
        pos++;
    }

    return pos == 64 ? 0 : -1;
}
