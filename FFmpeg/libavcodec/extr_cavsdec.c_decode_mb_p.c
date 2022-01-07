
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef enum cavs_mb { ____Placeholder_cavs_mb } cavs_mb ;
struct TYPE_10__ {int* col_type_base; size_t mbidx; int ref_flag; int gb; } ;
typedef int GetBitContext ;
typedef TYPE_1__ AVSContext ;


 int BLK_16X16 ;
 int BLK_16X8 ;
 int BLK_8X16 ;
 int BLK_8X8 ;
 int MV_FWD_A1 ;
 int MV_FWD_B3 ;
 int MV_FWD_C2 ;
 int MV_FWD_X0 ;
 int MV_FWD_X1 ;
 int MV_FWD_X2 ;
 int MV_FWD_X3 ;
 int MV_PRED_LEFT ;
 int MV_PRED_MEDIAN ;
 int MV_PRED_PSKIP ;
 int MV_PRED_TOP ;
 int MV_PRED_TOPRIGHT ;





 int decode_residual_inter (TYPE_1__*) ;
 int ff_cavs_filter (TYPE_1__*,int) ;
 int ff_cavs_init_mb (TYPE_1__*) ;
 int ff_cavs_inter (TYPE_1__*,int) ;
 int ff_cavs_mv (TYPE_1__*,int ,int ,int ,int ,int) ;
 int get_bits1 (int *) ;
 int set_intra_mode_default (TYPE_1__*) ;
 int store_mvs (TYPE_1__*) ;

__attribute__((used)) static void decode_mb_p(AVSContext *h, enum cavs_mb mb_type)
{
    GetBitContext *gb = &h->gb;
    int ref[4];

    ff_cavs_init_mb(h);
    switch (mb_type) {
    case 128:
        ff_cavs_mv(h, MV_FWD_X0, MV_FWD_C2, MV_PRED_PSKIP, BLK_16X16, 0);
        break;
    case 132:
        ref[0] = h->ref_flag ? 0 : get_bits1(gb);
        ff_cavs_mv(h, MV_FWD_X0, MV_FWD_C2, MV_PRED_MEDIAN, BLK_16X16, ref[0]);
        break;
    case 131:
        ref[0] = h->ref_flag ? 0 : get_bits1(gb);
        ref[2] = h->ref_flag ? 0 : get_bits1(gb);
        ff_cavs_mv(h, MV_FWD_X0, MV_FWD_C2, MV_PRED_TOP, BLK_16X8, ref[0]);
        ff_cavs_mv(h, MV_FWD_X2, MV_FWD_A1, MV_PRED_LEFT, BLK_16X8, ref[2]);
        break;
    case 130:
        ref[0] = h->ref_flag ? 0 : get_bits1(gb);
        ref[1] = h->ref_flag ? 0 : get_bits1(gb);
        ff_cavs_mv(h, MV_FWD_X0, MV_FWD_B3, MV_PRED_LEFT, BLK_8X16, ref[0]);
        ff_cavs_mv(h, MV_FWD_X1, MV_FWD_C2, MV_PRED_TOPRIGHT, BLK_8X16, ref[1]);
        break;
    case 129:
        ref[0] = h->ref_flag ? 0 : get_bits1(gb);
        ref[1] = h->ref_flag ? 0 : get_bits1(gb);
        ref[2] = h->ref_flag ? 0 : get_bits1(gb);
        ref[3] = h->ref_flag ? 0 : get_bits1(gb);
        ff_cavs_mv(h, MV_FWD_X0, MV_FWD_B3, MV_PRED_MEDIAN, BLK_8X8, ref[0]);
        ff_cavs_mv(h, MV_FWD_X1, MV_FWD_C2, MV_PRED_MEDIAN, BLK_8X8, ref[1]);
        ff_cavs_mv(h, MV_FWD_X2, MV_FWD_X1, MV_PRED_MEDIAN, BLK_8X8, ref[2]);
        ff_cavs_mv(h, MV_FWD_X3, MV_FWD_X0, MV_PRED_MEDIAN, BLK_8X8, ref[3]);
    }
    ff_cavs_inter(h, mb_type);
    set_intra_mode_default(h);
    store_mvs(h);
    if (mb_type != 128)
        decode_residual_inter(h);
    ff_cavs_filter(h, mb_type);
    h->col_type_base[h->mbidx] = mb_type;
}
