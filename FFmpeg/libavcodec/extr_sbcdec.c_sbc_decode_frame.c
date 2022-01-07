
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_16__ {int blocks; int subbands; int channels; } ;
struct TYPE_15__ {int channels; TYPE_1__* priv_data; } ;
struct TYPE_14__ {int nb_samples; int format; int channels; } ;
struct TYPE_13__ {int size; int data; } ;
struct TYPE_12__ {TYPE_5__ frame; int dsp; } ;
typedef TYPE_1__ SBCDecContext ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVFrame ;
typedef TYPE_4__ AVCodecContext ;


 int AVERROR (int ) ;
 int AV_SAMPLE_FMT_S16P ;
 int EIO ;
 int ff_get_buffer (TYPE_4__*,TYPE_3__*,int ) ;
 int sbc_synthesize_audio (int *,TYPE_5__*,TYPE_3__*) ;
 int sbc_unpack_frame (int ,TYPE_5__*,int ) ;

__attribute__((used)) static int sbc_decode_frame(AVCodecContext *avctx,
                            void *data, int *got_frame_ptr,
                            AVPacket *avpkt)
{
    SBCDecContext *sbc = avctx->priv_data;
    AVFrame *frame = data;
    int ret, frame_length;

    if (!sbc)
        return AVERROR(EIO);

    frame_length = sbc_unpack_frame(avpkt->data, &sbc->frame, avpkt->size);
    if (frame_length <= 0)
        return frame_length;

    avctx->channels =
    frame->channels = sbc->frame.channels;
    frame->format = AV_SAMPLE_FMT_S16P;
    frame->nb_samples = sbc->frame.blocks * sbc->frame.subbands;
    if ((ret = ff_get_buffer(avctx, frame, 0)) < 0)
        return ret;

    sbc_synthesize_audio(&sbc->dsp, &sbc->frame, frame);

    *got_frame_ptr = 1;

    return frame_length;
}
