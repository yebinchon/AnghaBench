
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int packet_loss; int samples_per_frame; } ;
typedef TYPE_1__ WMAProDecodeCtx ;
struct TYPE_11__ {TYPE_1__* priv_data; } ;
struct TYPE_10__ {int nb_samples; } ;
typedef int AVPacket ;
typedef TYPE_2__ AVFrame ;
typedef TYPE_3__ AVCodecContext ;


 int decode_packet (TYPE_3__*,TYPE_1__*,void*,int*,int *) ;
 int ff_get_buffer (TYPE_3__*,TYPE_2__*,int ) ;

__attribute__((used)) static int wmapro_decode_packet(AVCodecContext *avctx, void *data,
                                int *got_frame_ptr, AVPacket *avpkt)
{
    WMAProDecodeCtx *s = avctx->priv_data;
    AVFrame *frame = data;
    int ret;


    frame->nb_samples = s->samples_per_frame;
    if ((ret = ff_get_buffer(avctx, frame, 0)) < 0) {
        s->packet_loss = 1;
        return 0;
    }

    return decode_packet(avctx, s, data, got_frame_ptr, avpkt);
}
