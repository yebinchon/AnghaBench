
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_10__ {scalar_t__ data; } ;
struct TYPE_9__ {scalar_t__ index; scalar_t__ texture; } ;
struct TYPE_8__ {int height; int width; int format; int ** data; TYPE_6__** buf; } ;
struct TYPE_7__ {int height; int width; int pool; } ;
typedef TYPE_1__ AVHWFramesContext ;
typedef TYPE_2__ AVFrame ;
typedef TYPE_3__ AVD3D11FrameDescriptor ;


 int AVERROR (int ) ;
 int AV_PIX_FMT_D3D11 ;
 int ENOMEM ;
 TYPE_6__* av_buffer_pool_get (int ) ;

__attribute__((used)) static int d3d11va_get_buffer(AVHWFramesContext *ctx, AVFrame *frame)
{
    AVD3D11FrameDescriptor *desc;

    frame->buf[0] = av_buffer_pool_get(ctx->pool);
    if (!frame->buf[0])
        return AVERROR(ENOMEM);

    desc = (AVD3D11FrameDescriptor *)frame->buf[0]->data;

    frame->data[0] = (uint8_t *)desc->texture;
    frame->data[1] = (uint8_t *)desc->index;
    frame->format = AV_PIX_FMT_D3D11;
    frame->width = ctx->width;
    frame->height = ctx->height;

    return 0;
}
