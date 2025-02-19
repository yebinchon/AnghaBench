
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_13__ ;
typedef struct TYPE_15__ TYPE_12__ ;
typedef struct TYPE_14__ TYPE_11__ ;


typedef int uint8_t ;
typedef int int16_t ;
struct TYPE_19__ {size_t cbp_table_index; void* per_block_abt; void* abt_type; scalar_t__ per_mb_abt; scalar_t__ abt_flag; scalar_t__ hshift; scalar_t__ j_type; } ;
typedef TYPE_3__ Wmv2Context ;
struct TYPE_18__ {int (* clear_blocks ) (int ) ;} ;
struct TYPE_17__ {int * mb_type; } ;
struct TYPE_20__ {scalar_t__ pict_type; size_t mb_y; size_t mb_stride; size_t mb_x; int mb_intra; int* block_last_index; int*** mv; int mb_skipped; size_t ac_pred; size_t h263_aic_dir; int avctx; int * block; TYPE_2__ bdsp; void* rl_table_index; void* rl_chroma_table_index; int gb; scalar_t__ per_mb_rl_table; scalar_t__ inter_intra_pred; void* mv_type; void* mv_dir; TYPE_1__ current_picture; } ;
struct TYPE_16__ {int table; } ;
struct TYPE_15__ {int table; } ;
struct TYPE_14__ {int table; } ;
typedef TYPE_4__ MpegEncContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 scalar_t__ AV_PICTURE_TYPE_P ;
 int INTER_INTRA_VLC_BITS ;
 scalar_t__ IS_SKIP (int ) ;
 int MB_INTRA_VLC_BITS ;
 int MB_NON_INTRA_VLC_BITS ;
 void* MV_DIR_FORWARD ;
 void* MV_TYPE_16X16 ;
 int av_log (int ,int ,char*,size_t,size_t,...) ;
 void* decode012 (int *) ;
 int ff_dlog (int ,char*,size_t,size_t,...) ;
 TYPE_13__ ff_inter_intra_vlc ;
 TYPE_12__* ff_mb_non_intra_vlc ;
 TYPE_11__ ff_msmp4_mb_i_vlc ;
 int ff_msmpeg4_coded_block_pred (TYPE_4__*,int,int**) ;
 int ff_msmpeg4_decode_block (TYPE_4__*,int *,int,int,int *) ;
 void* get_bits1 (int *) ;
 scalar_t__ get_bits_left (int *) ;
 void* get_vlc2 (int *,int ,int ,int) ;
 size_t show_bits (int *,int) ;
 int stub1 (int ) ;
 int stub2 (int ) ;
 int wmv2_decode_inter_block (TYPE_3__* const,int *,int,int) ;
 int wmv2_decode_motion (TYPE_3__* const,int*,int*) ;
 int wmv2_pred_motion (TYPE_3__* const,int*,int*) ;

int ff_wmv2_decode_mb(MpegEncContext *s, int16_t block[6][64])
{
    Wmv2Context *const w = (Wmv2Context *) s;
    int cbp, code, i, ret;
    uint8_t *coded_val;

    if (w->j_type)
        return 0;

    if (s->pict_type == AV_PICTURE_TYPE_P) {
        if (IS_SKIP(s->current_picture.mb_type[s->mb_y * s->mb_stride + s->mb_x])) {

            s->mb_intra = 0;
            for (i = 0; i < 6; i++)
                s->block_last_index[i] = -1;
            s->mv_dir = MV_DIR_FORWARD;
            s->mv_type = MV_TYPE_16X16;
            s->mv[0][0][0] = 0;
            s->mv[0][0][1] = 0;
            s->mb_skipped = 1;
            w->hshift = 0;
            return 0;
        }
        if (get_bits_left(&s->gb) <= 0)
            return AVERROR_INVALIDDATA;

        code = get_vlc2(&s->gb, ff_mb_non_intra_vlc[w->cbp_table_index].table,
                        MB_NON_INTRA_VLC_BITS, 3);
        if (code < 0)
            return AVERROR_INVALIDDATA;
        s->mb_intra = (~code & 0x40) >> 6;

        cbp = code & 0x3f;
    } else {
        s->mb_intra = 1;
        if (get_bits_left(&s->gb) <= 0)
            return AVERROR_INVALIDDATA;
        code = get_vlc2(&s->gb, ff_msmp4_mb_i_vlc.table, MB_INTRA_VLC_BITS, 2);
        if (code < 0) {
            av_log(s->avctx, AV_LOG_ERROR,
                   "II-cbp illegal at %d %d\n", s->mb_x, s->mb_y);
            return AVERROR_INVALIDDATA;
        }

        cbp = 0;
        for (i = 0; i < 6; i++) {
            int val = ((code >> (5 - i)) & 1);
            if (i < 4) {
                int pred = ff_msmpeg4_coded_block_pred(s, i, &coded_val);
                val = val ^ pred;
                *coded_val = val;
            }
            cbp |= val << (5 - i);
        }
    }

    if (!s->mb_intra) {
        int mx, my;
        wmv2_pred_motion(w, &mx, &my);

        if (cbp) {
            s->bdsp.clear_blocks(s->block[0]);
            if (s->per_mb_rl_table) {
                s->rl_table_index = decode012(&s->gb);
                s->rl_chroma_table_index = s->rl_table_index;
            }

            if (w->abt_flag && w->per_mb_abt) {
                w->per_block_abt = get_bits1(&s->gb);
                if (!w->per_block_abt)
                    w->abt_type = decode012(&s->gb);
            } else
                w->per_block_abt = 0;
        }

        if ((ret = wmv2_decode_motion(w, &mx, &my)) < 0)
            return ret;

        s->mv_dir = MV_DIR_FORWARD;
        s->mv_type = MV_TYPE_16X16;
        s->mv[0][0][0] = mx;
        s->mv[0][0][1] = my;

        for (i = 0; i < 6; i++) {
            if ((ret = wmv2_decode_inter_block(w, block[i], i, (cbp >> (5 - i)) & 1)) < 0) {
                av_log(s->avctx, AV_LOG_ERROR,
                       "\nerror while decoding inter block: %d x %d (%d)\n",
                       s->mb_x, s->mb_y, i);
                return ret;
            }
        }
    } else {
        if (s->pict_type == AV_PICTURE_TYPE_P)
            ff_dlog(s->avctx, "%d%d ", s->inter_intra_pred, cbp);
        ff_dlog(s->avctx, "I at %d %d %d %06X\n", s->mb_x, s->mb_y,
                ((cbp & 3) ? 1 : 0) + ((cbp & 0x3C) ? 2 : 0),
                show_bits(&s->gb, 24));
        s->ac_pred = get_bits1(&s->gb);
        if (s->inter_intra_pred) {
            s->h263_aic_dir = get_vlc2(&s->gb, ff_inter_intra_vlc.table,
                                       INTER_INTRA_VLC_BITS, 1);
            ff_dlog(s->avctx, "%d%d %d %d/",
                    s->ac_pred, s->h263_aic_dir, s->mb_x, s->mb_y);
        }
        if (s->per_mb_rl_table && cbp) {
            s->rl_table_index = decode012(&s->gb);
            s->rl_chroma_table_index = s->rl_table_index;
        }

        s->bdsp.clear_blocks(s->block[0]);
        for (i = 0; i < 6; i++) {
            if ((ret = ff_msmpeg4_decode_block(s, block[i], i, (cbp >> (5 - i)) & 1, ((void*)0))) < 0) {
                av_log(s->avctx, AV_LOG_ERROR,
                       "\nerror while decoding intra block: %d x %d (%d)\n",
                       s->mb_x, s->mb_y, i);
                return ret;
            }
        }
    }

    return 0;
}
