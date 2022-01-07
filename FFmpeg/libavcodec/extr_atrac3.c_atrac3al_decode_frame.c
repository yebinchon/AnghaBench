
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ extended_data; int nb_samples; } ;
struct TYPE_5__ {int size; int data; } ;
typedef TYPE_1__ AVPacket ;
typedef TYPE_2__ AVFrame ;
typedef int AVCodecContext ;


 int AV_LOG_ERROR ;
 int SAMPLES_PER_FRAME ;
 int al_decode_frame (int *,int ,int,float**) ;
 int av_log (int *,int ,char*) ;
 int ff_get_buffer (int *,TYPE_2__*,int ) ;

__attribute__((used)) static int atrac3al_decode_frame(AVCodecContext *avctx, void *data,
                                 int *got_frame_ptr, AVPacket *avpkt)
{
    AVFrame *frame = data;
    int ret;

    frame->nb_samples = SAMPLES_PER_FRAME;
    if ((ret = ff_get_buffer(avctx, frame, 0)) < 0)
        return ret;

    ret = al_decode_frame(avctx, avpkt->data, avpkt->size,
                          (float **)frame->extended_data);
    if (ret) {
        av_log(avctx, AV_LOG_ERROR, "Frame decoding error!\n");
        return ret;
    }

    *got_frame_ptr = 1;

    return avpkt->size;
}
