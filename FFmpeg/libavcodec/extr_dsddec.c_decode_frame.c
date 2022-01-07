
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {TYPE_2__* avpkt; TYPE_3__* frame; } ;
typedef TYPE_1__ ThreadData ;
struct TYPE_14__ {int channels; int (* execute2 ) (TYPE_4__*,int ,TYPE_1__*,int *,int) ;} ;
struct TYPE_13__ {int nb_samples; } ;
struct TYPE_12__ {int size; } ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVFrame ;
typedef TYPE_4__ AVCodecContext ;


 int dsd_channel ;
 int ff_get_buffer (TYPE_4__*,TYPE_3__*,int ) ;
 int stub1 (TYPE_4__*,int ,TYPE_1__*,int *,int) ;

__attribute__((used)) static int decode_frame(AVCodecContext *avctx, void *data,
                        int *got_frame_ptr, AVPacket *avpkt)
{
    ThreadData td;
    AVFrame *frame = data;
    int ret;

    frame->nb_samples = avpkt->size / avctx->channels;

    if ((ret = ff_get_buffer(avctx, frame, 0)) < 0)
        return ret;

    td.frame = frame;
    td.avpkt = avpkt;
    avctx->execute2(avctx, dsd_channel, &td, ((void*)0), avctx->channels);

    *got_frame_ptr = 1;
    return frame->nb_samples * avctx->channels;
}
