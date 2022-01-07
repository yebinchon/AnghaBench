
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef int int16_t ;
struct TYPE_9__ {size_t dc_table_index; int y_dc_scale; int c_dc_scale; int*** ac_val; size_t* block_index; int* block_wrap; int* block_last_index; scalar_t__ ac_pred; int avctx; int gb; } ;
struct TYPE_8__ {int pq; int halfpq; size_t** zz_8x8; int left_blk_sh; int top_blk_sh; int pquantizer; TYPE_2__ s; int overlap; } ;
typedef TYPE_1__ VC1Context ;
struct TYPE_11__ {int table; } ;
struct TYPE_10__ {int table; } ;
typedef TYPE_2__ MpegEncContext ;
typedef int GetBitContext ;


 int AV_LOG_ERROR ;
 int DC_VLC_BITS ;
 int av_log (int ,int ,char*) ;
 TYPE_7__* ff_msmp4_dc_chroma_vlc ;
 TYPE_6__* ff_msmp4_dc_luma_vlc ;
 int get_bits (int *,int const) ;
 scalar_t__ get_bits1 (int *) ;
 int get_vlc2 (int *,int ,int ,int) ;
 int memcpy (int*,int*,int) ;
 int memset (int*,int ,int) ;
 int vc1_decode_ac_coeff (TYPE_1__*,int*,int*,int*,int) ;
 scalar_t__ vc1_i_pred_dc (TYPE_2__*,int ,int,int,int**,int*) ;

__attribute__((used)) static int vc1_decode_i_block(VC1Context *v, int16_t block[64], int n,
                              int coded, int codingset)
{
    GetBitContext *gb = &v->s.gb;
    MpegEncContext *s = &v->s;
    int dc_pred_dir = 0;
    int i;
    int16_t *dc_val;
    int16_t *ac_val, *ac_val2;
    int dcdiff, scale;


    if (n < 4) {
        dcdiff = get_vlc2(&s->gb, ff_msmp4_dc_luma_vlc[s->dc_table_index].table, DC_VLC_BITS, 3);
    } else {
        dcdiff = get_vlc2(&s->gb, ff_msmp4_dc_chroma_vlc[s->dc_table_index].table, DC_VLC_BITS, 3);
    }
    if (dcdiff < 0) {
        av_log(s->avctx, AV_LOG_ERROR, "Illegal DC VLC\n");
        return -1;
    }
    if (dcdiff) {
        const int m = (v->pq == 1 || v->pq == 2) ? 3 - v->pq : 0;
        if (dcdiff == 119 ) {
            dcdiff = get_bits(gb, 8 + m);
        } else {
            if (m)
                dcdiff = (dcdiff << m) + get_bits(gb, m) - ((1 << m) - 1);
        }
        if (get_bits1(gb))
            dcdiff = -dcdiff;
    }


    dcdiff += vc1_i_pred_dc(&v->s, v->overlap, v->pq, n, &dc_val, &dc_pred_dir);
    *dc_val = dcdiff;


    if (n < 4)
        scale = s->y_dc_scale;
    else
        scale = s->c_dc_scale;
    block[0] = dcdiff * scale;

    ac_val = s->ac_val[0][s->block_index[n]];
    ac_val2 = ac_val;
    if (dc_pred_dir)
        ac_val -= 16;
    else
        ac_val -= 16 * s->block_wrap[n];

    scale = v->pq * 2 + v->halfpq;


    i = !!coded;

    if (coded) {
        int last = 0, skip, value;
        const uint8_t *zz_table;
        int k;

        if (v->s.ac_pred) {
            if (!dc_pred_dir)
                zz_table = v->zz_8x8[2];
            else
                zz_table = v->zz_8x8[3];
        } else
            zz_table = v->zz_8x8[1];

        while (!last) {
            int ret = vc1_decode_ac_coeff(v, &last, &skip, &value, codingset);
            if (ret < 0)
                return ret;
            i += skip;
            if (i > 63)
                break;
            block[zz_table[i++]] = value;
        }


        if (s->ac_pred) {
            int sh;
            if (dc_pred_dir) {
                sh = v->left_blk_sh;
            } else {
                sh = v->top_blk_sh;
                ac_val += 8;
            }
            for (k = 1; k < 8; k++)
                block[k << sh] += ac_val[k];
        }

        for (k = 1; k < 8; k++) {
            ac_val2[k] = block[k << v->left_blk_sh];
            ac_val2[k + 8] = block[k << v->top_blk_sh];
        }


        for (k = 1; k < 64; k++)
            if (block[k]) {
                block[k] *= scale;
                if (!v->pquantizer)
                    block[k] += (block[k] < 0) ? -v->pq : v->pq;
            }

    } else {
        int k;

        memset(ac_val2, 0, 16 * 2);


        if (s->ac_pred) {
            int sh;
            if (dc_pred_dir) {
                sh = v->left_blk_sh;
            } else {
                sh = v->top_blk_sh;
                ac_val += 8;
                ac_val2 += 8;
            }
            memcpy(ac_val2, ac_val, 8 * 2);
            for (k = 1; k < 8; k++) {
                block[k << sh] = ac_val[k] * scale;
                if (!v->pquantizer && block[k << sh])
                    block[k << sh] += (block[k << sh] < 0) ? -v->pq : v->pq;
            }
        }
    }
    if (s->ac_pred) i = 63;
    s->block_last_index[n] = i;

    return 0;
}
