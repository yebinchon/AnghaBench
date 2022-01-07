
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_9__ {TYPE_3__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_11__ {int packet_idx; int l; int d; int packet_idx_max; scalar_t__ first; TYPE_2__** fec_col; int bitstring_size; TYPE_2__** fec_col_tmp; TYPE_2__* fec_row; scalar_t__ init; } ;
struct TYPE_10__ {int bitstring; void* ts; void* sn; } ;
typedef TYPE_2__ PrompegFec ;
typedef TYPE_3__ PrompegContext ;


 void* AV_RB16 (int const*) ;
 void* AV_RB32 (int const*) ;
 int PROMPEG_FEC_COL ;
 int PROMPEG_FEC_ROW ;
 int av_free (int *) ;
 int memcpy (int ,int *,int ) ;
 int prompeg_create_bitstring (TYPE_1__*,int const*,int,int **) ;
 int prompeg_init (TYPE_1__*,int const*,int) ;
 int prompeg_write_fec (TYPE_1__*,TYPE_2__*,int ) ;
 int xor_fast (int ,int *,int ,int ) ;

__attribute__((used)) static int prompeg_write(URLContext *h, const uint8_t *buf, int size) {
    PrompegContext *s = h->priv_data;
    PrompegFec *fec_tmp;
    uint8_t *bitstring = ((void*)0);
    int col_idx, col_out_idx, row_idx;
    int ret, written = 0;

    if (s->init && ((ret = prompeg_init(h, buf, size)) < 0))
        goto end;

    if ((ret = prompeg_create_bitstring(h, buf, size, &bitstring)) < 0)
        goto end;

    col_idx = s->packet_idx % s->l;
    row_idx = s->packet_idx / s->l % s->d;


    if (col_idx == 0) {
        if (!s->first || s->packet_idx > 0) {
            if ((ret = prompeg_write_fec(h, s->fec_row, PROMPEG_FEC_ROW)) < 0)
                goto end;
            written += ret;
        }
        memcpy(s->fec_row->bitstring, bitstring, s->bitstring_size);
        s->fec_row->sn = AV_RB16(buf + 2);
        s->fec_row->ts = AV_RB32(buf + 4);
    } else {
        xor_fast(s->fec_row->bitstring, bitstring, s->fec_row->bitstring,
                s->bitstring_size);
    }


    if (row_idx == 0) {
        if (!s->first) {

            fec_tmp = s->fec_col[col_idx];
            s->fec_col[col_idx] = s->fec_col_tmp[col_idx];
            s->fec_col_tmp[col_idx] = fec_tmp;
        }
        memcpy(s->fec_col_tmp[col_idx]->bitstring, bitstring, s->bitstring_size);
        s->fec_col_tmp[col_idx]->sn = AV_RB16(buf + 2);
        s->fec_col_tmp[col_idx]->ts = AV_RB32(buf + 4);
    } else {
        xor_fast(s->fec_col_tmp[col_idx]->bitstring, bitstring,
                s->fec_col_tmp[col_idx]->bitstring, s->bitstring_size);
    }


    if (!s->first && s->packet_idx % s->d == 0) {
        col_out_idx = s->packet_idx / s->d;
        if ((ret = prompeg_write_fec(h, s->fec_col[col_out_idx], PROMPEG_FEC_COL)) < 0)
            goto end;
        written += ret;
    }

    if (++s->packet_idx >= s->packet_idx_max) {
        s->packet_idx = 0;
        if (s->first)
            s->first = 0;
    }

    ret = written;

end:
    av_free(bitstring);
    return ret;
}
