
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* priv_data; } ;
struct TYPE_6__ {int encoder_flushing; } ;
typedef TYPE_1__ NvencContext ;
typedef int AVPacket ;
typedef int AVFrame ;
typedef TYPE_2__ AVCodecContext ;


 int AVERROR (int ) ;
 int AVERROR_EOF ;
 int EAGAIN ;
 int ff_nvenc_receive_packet (TYPE_2__*,int *) ;
 int ff_nvenc_send_frame (TYPE_2__*,int const*) ;

int ff_nvenc_encode_frame(AVCodecContext *avctx, AVPacket *pkt,
                          const AVFrame *frame, int *got_packet)
{
    NvencContext *ctx = avctx->priv_data;
    int res;

    if (!ctx->encoder_flushing) {
        res = ff_nvenc_send_frame(avctx, frame);
        if (res < 0)
            return res;
    }

    res = ff_nvenc_receive_packet(avctx, pkt);
    if (res == AVERROR(EAGAIN) || res == AVERROR_EOF) {
        *got_packet = 0;
    } else if (res < 0) {
        return res;
    } else {
        *got_packet = 1;
    }

    return 0;
}
