
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int16_t ;
struct TYPE_13__ {TYPE_1__* priv_data; } ;
struct TYPE_12__ {int nb_samples; scalar_t__* data; } ;
struct TYPE_11__ {int size; int * data; } ;
struct TYPE_10__ {int checksum_size; int frame_size; int channels; } ;
typedef TYPE_1__ QDM2Context ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVFrame ;
typedef TYPE_4__ AVCodecContext ;


 int ff_get_buffer (TYPE_4__*,TYPE_3__*,int ) ;
 int qdm2_decode (TYPE_1__*,int const*,int *) ;

__attribute__((used)) static int qdm2_decode_frame(AVCodecContext *avctx, void *data,
                             int *got_frame_ptr, AVPacket *avpkt)
{
    AVFrame *frame = data;
    const uint8_t *buf = avpkt->data;
    int buf_size = avpkt->size;
    QDM2Context *s = avctx->priv_data;
    int16_t *out;
    int i, ret;

    if(!buf)
        return 0;
    if(buf_size < s->checksum_size)
        return -1;


    frame->nb_samples = 16 * s->frame_size;
    if ((ret = ff_get_buffer(avctx, frame, 0)) < 0)
        return ret;
    out = (int16_t *)frame->data[0];

    for (i = 0; i < 16; i++) {
        if ((ret = qdm2_decode(s, buf, out)) < 0)
            return ret;
        out += s->channels * s->frame_size;
    }

    *got_frame_ptr = 1;

    return s->checksum_size;
}
