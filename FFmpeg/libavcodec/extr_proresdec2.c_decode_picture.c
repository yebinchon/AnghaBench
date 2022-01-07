
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int (* execute2 ) (TYPE_4__*,int ,int *,int *,int) ;TYPE_3__* priv_data; } ;
struct TYPE_9__ {int slice_count; TYPE_2__* slices; TYPE_1__* frame; } ;
struct TYPE_8__ {scalar_t__ ret; } ;
struct TYPE_7__ {int decode_error_flags; } ;
typedef TYPE_3__ ProresContext ;
typedef TYPE_4__ AVCodecContext ;


 int FF_DECODE_ERROR_INVALID_BITSTREAM ;
 int decode_slice_thread ;
 int stub1 (TYPE_4__*,int ,int *,int *,int) ;

__attribute__((used)) static int decode_picture(AVCodecContext *avctx)
{
    ProresContext *ctx = avctx->priv_data;
    int i;
    int error = 0;

    avctx->execute2(avctx, decode_slice_thread, ((void*)0), ((void*)0), ctx->slice_count);

    for (i = 0; i < ctx->slice_count; i++)
        error += ctx->slices[i].ret < 0;

    if (error)
        ctx->frame->decode_error_flags = FF_DECODE_ERROR_INVALID_BITSTREAM;
    if (error < ctx->slice_count)
        return 0;

    return ctx->slices[0].ret;
}
