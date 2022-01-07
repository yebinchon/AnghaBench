
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int mb_x; int mb_y; int er; } ;
struct TYPE_9__ {int j_type; int per_mb_abt; TYPE_1__ s; int x8; int cbp_table_index; void* abt_type; scalar_t__ per_mb_rl_bit; scalar_t__ abt_flag; scalar_t__ mspel_bit; scalar_t__ j_type_bit; } ;
typedef TYPE_2__ Wmv2Context ;
struct TYPE_11__ {int debug; } ;
struct TYPE_10__ {scalar_t__ pict_type; int per_mb_rl_table; int dc_table_index; int width; int height; int no_rounding; int qscale; int mspel; int mv_table_index; int low_delay; int loop_filter; int mb_y; int mb_x; int gb; int current_picture; int picture_number; scalar_t__ esc3_run_length; scalar_t__ esc3_level_length; int inter_intra_pred; void* rl_chroma_table_index; void* rl_table_index; TYPE_7__* avctx; } ;
typedef TYPE_3__ MpegEncContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_DEBUG ;
 scalar_t__ AV_PICTURE_TYPE_I ;
 int ER_MB_END ;
 int FF_DEBUG_PICT_INFO ;
 int av_log (TYPE_7__*,int ,char*,int,void*,int,int,int,int,...) ;
 void* decode012 (int *) ;
 int ff_er_add_slice (int *,int ,int ,int,int,int ) ;
 int ff_intrax8_decode_picture (int *,int *,int *,int *,int *,int,int,int ,int ) ;
 int get_bits1 (int *) ;
 int get_bits_left (int *) ;
 int parse_mb_skip (TYPE_2__* const) ;
 int wmv2_get_cbp_table_index (TYPE_3__*,int) ;

int ff_wmv2_decode_secondary_picture_header(MpegEncContext *s)
{
    Wmv2Context *const w = (Wmv2Context *) s;

    if (s->pict_type == AV_PICTURE_TYPE_I) {
        if (w->j_type_bit)
            w->j_type = get_bits1(&s->gb);
        else
            w->j_type = 0;

        if (!w->j_type) {
            if (w->per_mb_rl_bit)
                s->per_mb_rl_table = get_bits1(&s->gb);
            else
                s->per_mb_rl_table = 0;

            if (!s->per_mb_rl_table) {
                s->rl_chroma_table_index = decode012(&s->gb);
                s->rl_table_index = decode012(&s->gb);
            }

            s->dc_table_index = get_bits1(&s->gb);






            if (get_bits_left(&s->gb) * 8LL < (s->width+15)/16 * ((s->height+15)/16))
                return AVERROR_INVALIDDATA;
        }
        s->inter_intra_pred = 0;
        s->no_rounding = 1;
        if (s->avctx->debug & FF_DEBUG_PICT_INFO) {
            av_log(s->avctx, AV_LOG_DEBUG,
                   "qscale:%d rlc:%d rl:%d dc:%d mbrl:%d j_type:%d \n",
                   s->qscale, s->rl_chroma_table_index, s->rl_table_index,
                   s->dc_table_index, s->per_mb_rl_table, w->j_type);
        }
    } else {
        int cbp_index;
        int ret;
        w->j_type = 0;

        ret = parse_mb_skip(w);
        if (ret < 0)
            return ret;
        cbp_index = decode012(&s->gb);
        w->cbp_table_index = wmv2_get_cbp_table_index(s, cbp_index);

        if (w->mspel_bit)
            s->mspel = get_bits1(&s->gb);
        else
            s->mspel = 0;

        if (w->abt_flag) {
            w->per_mb_abt = get_bits1(&s->gb) ^ 1;
            if (!w->per_mb_abt)
                w->abt_type = decode012(&s->gb);
        }

        if (w->per_mb_rl_bit)
            s->per_mb_rl_table = get_bits1(&s->gb);
        else
            s->per_mb_rl_table = 0;

        if (!s->per_mb_rl_table) {
            s->rl_table_index = decode012(&s->gb);
            s->rl_chroma_table_index = s->rl_table_index;
        }

        if (get_bits_left(&s->gb) < 2)
            return AVERROR_INVALIDDATA;

        s->dc_table_index = get_bits1(&s->gb);
        s->mv_table_index = get_bits1(&s->gb);

        s->inter_intra_pred = 0;
        s->no_rounding ^= 1;

        if (s->avctx->debug & FF_DEBUG_PICT_INFO) {
            av_log(s->avctx, AV_LOG_DEBUG,
                   "rl:%d rlc:%d dc:%d mv:%d mbrl:%d qp:%d mspel:%d "
                   "per_mb_abt:%d abt_type:%d cbp:%d ii:%d\n",
                   s->rl_table_index, s->rl_chroma_table_index,
                   s->dc_table_index, s->mv_table_index,
                   s->per_mb_rl_table, s->qscale, s->mspel,
                   w->per_mb_abt, w->abt_type, w->cbp_table_index,
                   s->inter_intra_pred);
        }
    }
    s->esc3_level_length = 0;
    s->esc3_run_length = 0;
    s->picture_number++;

    if (w->j_type) {
        ff_intrax8_decode_picture(&w->x8, &s->current_picture,
                                  &s->gb, &s->mb_x, &s->mb_y,
                                  2 * s->qscale, (s->qscale - 1) | 1,
                                  s->loop_filter, s->low_delay);

        ff_er_add_slice(&w->s.er, 0, 0,
                        (w->s.mb_x >> 1) - 1, (w->s.mb_y >> 1) - 1,
                        ER_MB_END);
        return 1;
    }

    return 0;
}
