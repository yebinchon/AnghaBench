
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int left_cbp; int top_cbp; int * cabac_state; int cabac; } ;
typedef TYPE_1__ H264SliceContext ;


 int get_cabac_noinline (int *,int *) ;

__attribute__((used)) static int decode_cabac_mb_cbp_luma(H264SliceContext *sl)
{
    int cbp_b, cbp_a, ctx, cbp = 0;

    cbp_a = sl->left_cbp;
    cbp_b = sl->top_cbp;

    ctx = !(cbp_a & 0x02) + 2 * !(cbp_b & 0x04);
    cbp += get_cabac_noinline(&sl->cabac, &sl->cabac_state[73 + ctx]);
    ctx = !(cbp & 0x01) + 2 * !(cbp_b & 0x08);
    cbp += get_cabac_noinline(&sl->cabac, &sl->cabac_state[73 + ctx]) << 1;
    ctx = !(cbp_a & 0x08) + 2 * !(cbp & 0x01);
    cbp += get_cabac_noinline(&sl->cabac, &sl->cabac_state[73 + ctx]) << 2;
    ctx = !(cbp & 0x04) + 2 * !(cbp & 0x02);
    cbp += get_cabac_noinline(&sl->cabac, &sl->cabac_state[73 + ctx]) << 3;
    return cbp;
}
