
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int int16_t ;
struct TYPE_14__ {TYPE_2__* priv_data; } ;
struct TYPE_13__ {int nb_samples; int** data; } ;
struct TYPE_12__ {int size; int data; } ;
struct TYPE_11__ {size_t dict_entry; int sample; int delta_compression; TYPE_1__* dict; } ;
struct TYPE_10__ {size_t r; size_t l; } ;
typedef TYPE_2__ HCOMContext ;
typedef int GetBitContext ;
typedef TYPE_3__ AVPacket ;
typedef TYPE_4__ AVFrame ;
typedef TYPE_5__ AVCodecContext ;


 int AVERROR_INVALIDDATA ;
 int INT16_MAX ;
 int ff_get_buffer (TYPE_5__*,TYPE_4__*,int ) ;
 scalar_t__ get_bits1 (int *) ;
 scalar_t__ get_bits_left (int *) ;
 int init_get_bits8 (int *,int ,int) ;

__attribute__((used)) static int hcom_decode(AVCodecContext *avctx, void *data,
                       int *got_frame, AVPacket *pkt)
{
    HCOMContext *s = avctx->priv_data;
    AVFrame *frame = data;
    GetBitContext gb;
    int ret, n = 0;

    if (pkt->size > INT16_MAX)
        return AVERROR_INVALIDDATA;

    frame->nb_samples = pkt->size * 8;
    if ((ret = ff_get_buffer(avctx, frame, 0)) < 0)
        return ret;

    if ((ret = init_get_bits8(&gb, pkt->data, pkt->size)) < 0)
        return ret;

    while (get_bits_left(&gb) > 0) {
        if (get_bits1(&gb))
            s->dict_entry = s->dict[s->dict_entry].r;
        else
            s->dict_entry = s->dict[s->dict_entry].l;

        if (s->dict[s->dict_entry].l < 0) {
            int16_t datum;

            datum = s->dict[s->dict_entry].r;

            if (!s->delta_compression)
                s->sample = 0;
            s->sample = (s->sample + datum) & 0xFF;

            frame->data[0][n++] = s->sample;

            s->dict_entry = 0;
        }
    }

    frame->nb_samples = n;

    *got_frame = 1;

    return pkt->size;
}
