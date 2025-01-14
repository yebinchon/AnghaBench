
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int16_t ;
struct TYPE_10__ {size_t cbp_table_index; } ;
typedef TYPE_1__ Wmv2Context ;
struct TYPE_11__ {int* block_last_index; scalar_t__ pict_type; size_t h263_aic_dir; int p_tex_bits; int i_tex_bits; scalar_t__ mb_intra; int misc_bits; int pb; scalar_t__ inter_intra_pred; int mv_bits; } ;
typedef TYPE_2__ MpegEncContext ;


 scalar_t__ AV_PICTURE_TYPE_I ;
 int ff_h263_pred_motion (TYPE_2__*,int ,int ,int*,int*) ;
 int** ff_msmp4_mb_i_table ;
 int ff_msmpeg4_coded_block_pred (TYPE_2__*,int,int**) ;
 int ff_msmpeg4_encode_block (TYPE_2__*,int *,int) ;
 int ff_msmpeg4_encode_motion (TYPE_2__*,int,int) ;
 int ff_msmpeg4_handle_slices (TYPE_2__*) ;
 int** ff_table_inter_intra ;
 int*** ff_wmv2_inter_table ;
 scalar_t__ get_bits_diff (TYPE_2__*) ;
 int put_bits (int *,int,int) ;

void ff_wmv2_encode_mb(MpegEncContext *s, int16_t block[6][64],
                       int motion_x, int motion_y)
{
    Wmv2Context *const w = (Wmv2Context *) s;
    int cbp, coded_cbp, i;
    int pred_x, pred_y;
    uint8_t *coded_block;

    ff_msmpeg4_handle_slices(s);

    if (!s->mb_intra) {

        cbp = 0;
        for (i = 0; i < 6; i++)
            if (s->block_last_index[i] >= 0)
                cbp |= 1 << (5 - i);

        put_bits(&s->pb,
                 ff_wmv2_inter_table[w->cbp_table_index][cbp + 64][1],
                 ff_wmv2_inter_table[w->cbp_table_index][cbp + 64][0]);

        s->misc_bits += get_bits_diff(s);

        ff_h263_pred_motion(s, 0, 0, &pred_x, &pred_y);
        ff_msmpeg4_encode_motion(s, motion_x - pred_x,
                                 motion_y - pred_y);
        s->mv_bits += get_bits_diff(s);
    } else {

        cbp = 0;
        coded_cbp = 0;
        for (i = 0; i < 6; i++) {
            int val, pred;
            val = (s->block_last_index[i] >= 1);
            cbp |= val << (5 - i);
            if (i < 4) {

                pred = ff_msmpeg4_coded_block_pred(s, i, &coded_block);
                *coded_block = val;
                val = val ^ pred;
            }
            coded_cbp |= val << (5 - i);
        }

        if (s->pict_type == AV_PICTURE_TYPE_I)
            put_bits(&s->pb,
                     ff_msmp4_mb_i_table[coded_cbp][1],
                     ff_msmp4_mb_i_table[coded_cbp][0]);
        else
            put_bits(&s->pb,
                     ff_wmv2_inter_table[w->cbp_table_index][cbp][1],
                     ff_wmv2_inter_table[w->cbp_table_index][cbp][0]);
        put_bits(&s->pb, 1, 0);
        if (s->inter_intra_pred) {
            s->h263_aic_dir = 0;
            put_bits(&s->pb,
                     ff_table_inter_intra[s->h263_aic_dir][1],
                     ff_table_inter_intra[s->h263_aic_dir][0]);
        }
        s->misc_bits += get_bits_diff(s);
    }

    for (i = 0; i < 6; i++)
        ff_msmpeg4_encode_block(s, block[i], i);
    if (s->mb_intra)
        s->i_tex_bits += get_bits_diff(s);
    else
        s->p_tex_bits += get_bits_diff(s);
}
