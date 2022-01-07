
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


typedef enum cavs_sub_mb { ____Placeholder_cavs_sub_mb } cavs_sub_mb ;
typedef enum cavs_mb { ____Placeholder_cavs_mb } cavs_mb ;
struct TYPE_11__ {size_t mbidx; void** mv; int avctx; int * col_mv; int * col_type_base; int gb; } ;
typedef TYPE_1__ AVSContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int BLK_16X16 ;
 int BLK_16X8 ;
 int BLK_8X16 ;
 int BLK_8X8 ;
 int BWD0 ;
 int BWD1 ;





 int B_SUB_BWD ;




 int FWD0 ;
 int FWD1 ;
 size_t MV_BWD_A1 ;
 size_t MV_BWD_B3 ;
 size_t MV_BWD_C2 ;
 size_t MV_BWD_OFFS ;
 size_t MV_BWD_X0 ;
 size_t MV_BWD_X1 ;
 size_t MV_BWD_X2 ;
 size_t MV_FWD_A1 ;
 size_t MV_FWD_B3 ;
 size_t MV_FWD_C2 ;
 size_t MV_FWD_X0 ;
 size_t MV_FWD_X1 ;
 size_t MV_FWD_X2 ;
 int MV_PRED_BSKIP ;
 int MV_PRED_LEFT ;
 int MV_PRED_MEDIAN ;
 int MV_PRED_TOP ;
 int MV_PRED_TOPRIGHT ;
 int SYM0 ;
 int SYM1 ;
 size_t TMP_UNUSED_INX ;
 int av_assert2 (int) ;
 int av_log (int ,int ,char*,int) ;
 int decode_residual_inter (TYPE_1__*) ;
 void* ff_cavs_dir_mv ;
 int ff_cavs_filter (TYPE_1__*,int) ;
 int ff_cavs_init_mb (TYPE_1__*) ;
 int ff_cavs_inter (TYPE_1__*,int) ;
 int ff_cavs_mv (TYPE_1__*,size_t,size_t,int ,int ,int) ;
 int* ff_cavs_partition_flags ;
 int get_bits (int *,int) ;
 int mv_pred_direct (TYPE_1__*,void**,int *) ;
 int mv_pred_sym (TYPE_1__*,void**,int ) ;
 size_t* mv_scan ;
 int set_intra_mode_default (TYPE_1__*) ;
 int set_mvs (void**,int ) ;

__attribute__((used)) static int decode_mb_b(AVSContext *h, enum cavs_mb mb_type)
{
    int block;
    enum cavs_sub_mb sub_type[4];
    int flags;

    ff_cavs_init_mb(h);


    h->mv[MV_FWD_X0] = ff_cavs_dir_mv;
    set_mvs(&h->mv[MV_FWD_X0], BLK_16X16);
    h->mv[MV_BWD_X0] = ff_cavs_dir_mv;
    set_mvs(&h->mv[MV_BWD_X0], BLK_16X16);
    switch (mb_type) {
    case 132:
    case 134:
        if (!h->col_type_base[h->mbidx]) {

            ff_cavs_mv(h, MV_FWD_X0, MV_FWD_C2, MV_PRED_BSKIP, BLK_16X16, 1);
            ff_cavs_mv(h, MV_BWD_X0, MV_BWD_C2, MV_PRED_BSKIP, BLK_16X16, 0);
        } else

            for (block = 0; block < 4; block++)
                mv_pred_direct(h, &h->mv[mv_scan[block]],
                               &h->col_mv[h->mbidx * 4 + block]);
        break;
    case 133:
        ff_cavs_mv(h, MV_FWD_X0, MV_FWD_C2, MV_PRED_MEDIAN, BLK_16X16, 1);
        break;
    case 128:
        ff_cavs_mv(h, MV_FWD_X0, MV_FWD_C2, MV_PRED_MEDIAN, BLK_16X16, 1);
        mv_pred_sym(h, &h->mv[MV_FWD_X0], BLK_16X16);
        break;
    case 135:
        ff_cavs_mv(h, MV_BWD_X0, MV_BWD_C2, MV_PRED_MEDIAN, BLK_16X16, 0);
        break;
    case 136:

        flags = 0;
        for (block = 0; block < 4; block++)
            sub_type[block] = get_bits(&h->gb, 2);
        for (block = 0; block < 4; block++) {
            switch (sub_type[block]) {
            case 131:
                if (!h->col_type_base[h->mbidx]) {

                    if(flags==0) {


                        if(block>0){
                            h->mv[7 ] = h->mv[MV_FWD_X0 ];
                            h->mv[7 + MV_BWD_OFFS] = h->mv[MV_FWD_X0 + MV_BWD_OFFS];
                        }
                        ff_cavs_mv(h, MV_FWD_X0, MV_FWD_C2,
                                   MV_PRED_BSKIP, BLK_8X8, 1);
                        ff_cavs_mv(h, MV_FWD_X0+MV_BWD_OFFS,
                                   MV_FWD_C2+MV_BWD_OFFS,
                                   MV_PRED_BSKIP, BLK_8X8, 0);
                        if(block>0) {
                            flags = mv_scan[block];
                            h->mv[flags ] = h->mv[MV_FWD_X0 ];
                            h->mv[flags + MV_BWD_OFFS] = h->mv[MV_FWD_X0 + MV_BWD_OFFS];
                            h->mv[MV_FWD_X0 ] = h->mv[7 ];
                            h->mv[MV_FWD_X0 + MV_BWD_OFFS] = h->mv[7 + MV_BWD_OFFS];
                        } else
                            flags = MV_FWD_X0;
                    } else {
                        h->mv[mv_scan[block] ] = h->mv[flags ];
                        h->mv[mv_scan[block] + MV_BWD_OFFS] = h->mv[flags + MV_BWD_OFFS];
                    }
                } else
                    mv_pred_direct(h, &h->mv[mv_scan[block]],
                                   &h->col_mv[h->mbidx * 4 + block]);
                break;
            case 130:
                ff_cavs_mv(h, mv_scan[block], mv_scan[block] - 3,
                           MV_PRED_MEDIAN, BLK_8X8, 1);
                break;
            case 129:
                ff_cavs_mv(h, mv_scan[block], mv_scan[block] - 3,
                           MV_PRED_MEDIAN, BLK_8X8, 1);
                mv_pred_sym(h, &h->mv[mv_scan[block]], BLK_8X8);
                break;
            }
        }

        for (block = 0; block < 4; block++) {
            if (sub_type[block] == B_SUB_BWD)
                ff_cavs_mv(h, mv_scan[block] + MV_BWD_OFFS,
                           mv_scan[block] + MV_BWD_OFFS - 3,
                           MV_PRED_MEDIAN, BLK_8X8, 0);
        }
        break;
    default:
        if (mb_type <= 128) {
            av_log(h->avctx, AV_LOG_ERROR, "Invalid mb_type %d in B frame\n", mb_type);
            return AVERROR_INVALIDDATA;
        }
        av_assert2(mb_type < 136);
        flags = ff_cavs_partition_flags[mb_type];
        if (mb_type & 1) {
            if (flags & FWD0)
                ff_cavs_mv(h, MV_FWD_X0, MV_FWD_C2, MV_PRED_TOP, BLK_16X8, 1);
            if (flags & SYM0)
                mv_pred_sym(h, &h->mv[MV_FWD_X0], BLK_16X8);
            if (flags & FWD1)
                ff_cavs_mv(h, MV_FWD_X2, MV_FWD_A1, MV_PRED_LEFT, BLK_16X8, 1);
            if (flags & SYM1)
                mv_pred_sym(h, &h->mv[MV_FWD_X2], BLK_16X8);
            if (flags & BWD0)
                ff_cavs_mv(h, MV_BWD_X0, MV_BWD_C2, MV_PRED_TOP, BLK_16X8, 0);
            if (flags & BWD1)
                ff_cavs_mv(h, MV_BWD_X2, MV_BWD_A1, MV_PRED_LEFT, BLK_16X8, 0);
        } else {
            if (flags & FWD0)
                ff_cavs_mv(h, MV_FWD_X0, MV_FWD_B3, MV_PRED_LEFT, BLK_8X16, 1);
            if (flags & SYM0)
                mv_pred_sym(h, &h->mv[MV_FWD_X0], BLK_8X16);
            if (flags & FWD1)
                ff_cavs_mv(h, MV_FWD_X1, MV_FWD_C2, MV_PRED_TOPRIGHT, BLK_8X16, 1);
            if (flags & SYM1)
                mv_pred_sym(h, &h->mv[MV_FWD_X1], BLK_8X16);
            if (flags & BWD0)
                ff_cavs_mv(h, MV_BWD_X0, MV_BWD_B3, MV_PRED_LEFT, BLK_8X16, 0);
            if (flags & BWD1)
                ff_cavs_mv(h, MV_BWD_X1, MV_BWD_C2, MV_PRED_TOPRIGHT, BLK_8X16, 0);
        }
    }
    ff_cavs_inter(h, mb_type);
    set_intra_mode_default(h);
    if (mb_type != 132)
        decode_residual_inter(h);
    ff_cavs_filter(h, mb_type);

    return 0;
}
