
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_16__ ;
typedef struct TYPE_17__ TYPE_14__ ;


typedef int uint8_t ;
struct TYPE_19__ {size_t* qscale_table; scalar_t__*** motion_val; int * mb_type; } ;
struct TYPE_21__ {int (* clear_blocks ) (int*) ;} ;
struct TYPE_23__ {int mb_x; int mb_y; int mb_intra; int first_slice_line; int start_mb_y; int end_mb_y; int mb_width; size_t* block_index; int mb_height; int er; scalar_t__ loop_filter; int gb; TYPE_16__* avctx; int ac_pred; TYPE_1__ current_picture; TYPE_3__ bdsp; int * c_dc_scale_table; int c_dc_scale; int * y_dc_scale_table; int y_dc_scale; } ;
struct TYPE_20__ {int (* vc1_inv_trans_8x8 ) (int*) ;} ;
struct TYPE_22__ {int y_ac_table_index; int pqindex; int c_ac_table_index; size_t pq; int end_mb_x; int*** block; size_t cur_blk_idx; int** mb_type; int topleft_blk_idx; int top_blk_idx; int left_blk_idx; TYPE_5__ s; int bits; scalar_t__ rangeredfrm; scalar_t__ overlap; TYPE_2__ vc1dsp; int codingset2; int codingset; } ;
typedef TYPE_4__ VC1Context ;
struct TYPE_18__ {int flags; } ;
struct TYPE_17__ {int table; } ;
typedef TYPE_5__ MpegEncContext ;


 int AV_CODEC_FLAG_GRAY ;
 int AV_LOG_ERROR ;
 scalar_t__ CONFIG_GRAY ;
 int CS_HIGH_MOT_INTER ;
 int CS_HIGH_MOT_INTRA ;
 int CS_HIGH_RATE_INTER ;
 int CS_HIGH_RATE_INTRA ;
 int CS_LOW_MOT_INTER ;
 int CS_LOW_MOT_INTRA ;
 int CS_MID_RATE_INTER ;
 int CS_MID_RATE_INTRA ;
 int ER_MB_END ;
 int ER_MB_ERROR ;
 int MB_INTRA_VLC_BITS ;
 int MB_TYPE_INTRA ;
 int av_log (TYPE_16__*,int ,char*,int ,int ) ;
 size_t* block_map ;
 int ff_er_add_slice (int *,int ,int ,int,int,int ) ;
 int ff_mpeg_draw_horiz_band (TYPE_5__*,int,int) ;
 TYPE_14__ ff_msmp4_mb_i_vlc ;
 int ff_update_block_index (TYPE_5__*) ;
 int ff_vc1_i_loop_filter (TYPE_4__*) ;
 int ff_vc1_i_overlap_filter (TYPE_4__*) ;
 int get_bits1 (int *) ;
 int get_bits_count (int *) ;
 int get_vlc2 (int *,int ,int ,int) ;
 int init_block_index (TYPE_4__*) ;
 int stub1 (int*) ;
 int stub2 (int*) ;
 int vc1_coded_block_pred (TYPE_5__*,int,int**) ;
 int vc1_decode_i_block (TYPE_4__*,int*,int,int,int ) ;
 int vc1_put_blocks_clamped (TYPE_4__*,int) ;

__attribute__((used)) static void vc1_decode_i_blocks(VC1Context *v)
{
    int k, j;
    MpegEncContext *s = &v->s;
    int cbp, val;
    uint8_t *coded_val;
    int mb_pos;


    switch (v->y_ac_table_index) {
    case 0:
        v->codingset = (v->pqindex <= 8) ? CS_HIGH_RATE_INTRA : CS_LOW_MOT_INTRA;
        break;
    case 1:
        v->codingset = CS_HIGH_MOT_INTRA;
        break;
    case 2:
        v->codingset = CS_MID_RATE_INTRA;
        break;
    }

    switch (v->c_ac_table_index) {
    case 0:
        v->codingset2 = (v->pqindex <= 8) ? CS_HIGH_RATE_INTER : CS_LOW_MOT_INTER;
        break;
    case 1:
        v->codingset2 = CS_HIGH_MOT_INTER;
        break;
    case 2:
        v->codingset2 = CS_MID_RATE_INTER;
        break;
    }


    s->y_dc_scale = s->y_dc_scale_table[v->pq];
    s->c_dc_scale = s->c_dc_scale_table[v->pq];


    s->mb_x = s->mb_y = 0;
    s->mb_intra = 1;
    s->first_slice_line = 1;
    for (s->mb_y = s->start_mb_y; s->mb_y < s->end_mb_y; s->mb_y++) {
        s->mb_x = 0;
        init_block_index(v);
        for (; s->mb_x < v->end_mb_x; s->mb_x++) {
            ff_update_block_index(s);
            s->bdsp.clear_blocks(v->block[v->cur_blk_idx][0]);
            mb_pos = s->mb_x + s->mb_y * s->mb_width;
            s->current_picture.mb_type[mb_pos] = MB_TYPE_INTRA;
            s->current_picture.qscale_table[mb_pos] = v->pq;
            for (int i = 0; i < 4; i++) {
                s->current_picture.motion_val[1][s->block_index[i]][0] = 0;
                s->current_picture.motion_val[1][s->block_index[i]][1] = 0;
            }


            cbp = get_vlc2(&v->s.gb, ff_msmp4_mb_i_vlc.table, MB_INTRA_VLC_BITS, 2);
            v->s.ac_pred = get_bits1(&v->s.gb);

            for (k = 0; k < 6; k++) {
                v->mb_type[0][s->block_index[k]] = 1;

                val = ((cbp >> (5 - k)) & 1);

                if (k < 4) {
                    int pred = vc1_coded_block_pred(&v->s, k, &coded_val);
                    val = val ^ pred;
                    *coded_val = val;
                }
                cbp |= val << (5 - k);

                vc1_decode_i_block(v, v->block[v->cur_blk_idx][block_map[k]], k, val, (k < 4) ? v->codingset : v->codingset2);

                if (CONFIG_GRAY && k > 3 && (s->avctx->flags & AV_CODEC_FLAG_GRAY))
                    continue;
                v->vc1dsp.vc1_inv_trans_8x8(v->block[v->cur_blk_idx][block_map[k]]);
            }

            if (v->overlap && v->pq >= 9) {
                ff_vc1_i_overlap_filter(v);
                if (v->rangeredfrm)
                    for (k = 0; k < 6; k++)
                        for (j = 0; j < 64; j++)
                            v->block[v->cur_blk_idx][block_map[k]][j] *= 2;
                vc1_put_blocks_clamped(v, 1);
            } else {
                if (v->rangeredfrm)
                    for (k = 0; k < 6; k++)
                        for (j = 0; j < 64; j++)
                            v->block[v->cur_blk_idx][block_map[k]][j] = (v->block[v->cur_blk_idx][block_map[k]][j] - 64) * 2;
                vc1_put_blocks_clamped(v, 0);
            }

            if (v->s.loop_filter)
                ff_vc1_i_loop_filter(v);

            if (get_bits_count(&s->gb) > v->bits) {
                ff_er_add_slice(&s->er, 0, 0, s->mb_x, s->mb_y, ER_MB_ERROR);
                av_log(s->avctx, AV_LOG_ERROR, "Bits overconsumption: %i > %i\n",
                       get_bits_count(&s->gb), v->bits);
                return;
            }

            v->topleft_blk_idx = (v->topleft_blk_idx + 1) % (v->end_mb_x + 2);
            v->top_blk_idx = (v->top_blk_idx + 1) % (v->end_mb_x + 2);
            v->left_blk_idx = (v->left_blk_idx + 1) % (v->end_mb_x + 2);
            v->cur_blk_idx = (v->cur_blk_idx + 1) % (v->end_mb_x + 2);
        }
        if (!v->s.loop_filter)
            ff_mpeg_draw_horiz_band(s, s->mb_y * 16, 16);
        else if (s->mb_y)
            ff_mpeg_draw_horiz_band(s, (s->mb_y - 1) * 16, 16);

        s->first_slice_line = 0;
    }
    if (v->s.loop_filter)
        ff_mpeg_draw_horiz_band(s, (s->end_mb_y - 1) * 16, 16);



    ff_er_add_slice(&s->er, 0, 0, s->mb_width - 1, s->mb_height - 1, ER_MB_END);
}
