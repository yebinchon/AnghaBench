
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ extradata_size; int extradata; TYPE_1__* priv_data; } ;
struct TYPE_13__ {scalar_t__ size; int data; int member_0; } ;
struct TYPE_12__ {int extradata_sent; } ;
typedef TYPE_1__ MMALDecodeContext ;
typedef TYPE_2__ AVPacket ;
typedef int AVFrame ;
typedef TYPE_3__ AVCodecContext ;


 int av_init_packet (TYPE_2__*) ;
 int ffmmal_add_packet (TYPE_3__*,TYPE_2__*,int) ;
 int ffmmal_fill_input_port (TYPE_3__*) ;
 int ffmmal_fill_output_port (TYPE_3__*) ;
 int ffmmal_read_frame (TYPE_3__*,int *,int*) ;

__attribute__((used)) static int ffmmal_decode(AVCodecContext *avctx, void *data, int *got_frame,
                         AVPacket *avpkt)
{
    MMALDecodeContext *ctx = avctx->priv_data;
    AVFrame *frame = data;
    int ret = 0;

    if (avctx->extradata_size && !ctx->extradata_sent) {
        AVPacket pkt = {0};
        av_init_packet(&pkt);
        pkt.data = avctx->extradata;
        pkt.size = avctx->extradata_size;
        ctx->extradata_sent = 1;
        if ((ret = ffmmal_add_packet(avctx, &pkt, 1)) < 0)
            return ret;
    }

    if ((ret = ffmmal_add_packet(avctx, avpkt, 0)) < 0)
        return ret;

    if ((ret = ffmmal_fill_input_port(avctx)) < 0)
        return ret;

    if ((ret = ffmmal_fill_output_port(avctx)) < 0)
        return ret;

    if ((ret = ffmmal_read_frame(avctx, frame, got_frame)) < 0)
        return ret;




    if ((ret = ffmmal_fill_output_port(avctx)) < 0)
        return ret;

    if ((ret = ffmmal_fill_input_port(avctx)) < 0)
        return ret;

    return ret;
}
