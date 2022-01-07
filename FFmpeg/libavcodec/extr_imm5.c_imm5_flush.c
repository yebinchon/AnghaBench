
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* priv_data; } ;
struct TYPE_4__ {int hevc_avctx; int h264_avctx; } ;
typedef TYPE_1__ IMM5Context ;
typedef TYPE_2__ AVCodecContext ;


 int avcodec_flush_buffers (int ) ;

__attribute__((used)) static void imm5_flush(AVCodecContext *avctx)
{
    IMM5Context *ctx = avctx->priv_data;

    avcodec_flush_buffers(ctx->h264_avctx);
    avcodec_flush_buffers(ctx->hevc_avctx);
}
