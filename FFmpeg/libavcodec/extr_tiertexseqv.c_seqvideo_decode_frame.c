
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_10__ {TYPE_1__* priv_data; } ;
struct TYPE_9__ {int size; int * data; } ;
struct TYPE_8__ {int frame; } ;
typedef TYPE_1__ SeqVideoContext ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVCodecContext ;


 int AVERROR_INVALIDDATA ;
 int av_frame_ref (void*,int ) ;
 int ff_reget_buffer (TYPE_3__*,int ,int ) ;
 scalar_t__ seqvideo_decode (TYPE_1__*,int const*,int) ;

__attribute__((used)) static int seqvideo_decode_frame(AVCodecContext *avctx,
                                 void *data, int *got_frame,
                                 AVPacket *avpkt)
{
    const uint8_t *buf = avpkt->data;
    int buf_size = avpkt->size;
    int ret;

    SeqVideoContext *seq = avctx->priv_data;

    if ((ret = ff_reget_buffer(avctx, seq->frame, 0)) < 0)
        return ret;

    if (seqvideo_decode(seq, buf, buf_size))
        return AVERROR_INVALIDDATA;

    if ((ret = av_frame_ref(data, seq->frame)) < 0)
        return ret;
    *got_frame = 1;

    return buf_size;
}
