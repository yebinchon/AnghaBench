
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int data; } ;
struct TYPE_7__ {int* linesize; int height; int width; int format; scalar_t__* data; TYPE_5__** buf; } ;
struct TYPE_6__ {scalar_t__ sw_format; int height; int width; int pool; } ;
typedef TYPE_1__ AVHWFramesContext ;
typedef TYPE_2__ AVFrame ;


 int AVERROR (int ) ;
 int AV_PIX_FMT_CUDA ;
 scalar_t__ AV_PIX_FMT_YUV420P ;
 int CUDA_FRAME_ALIGNMENT ;
 int ENOMEM ;
 TYPE_5__* av_buffer_pool_get (int ) ;
 int av_image_fill_arrays (scalar_t__*,int*,int ,scalar_t__,int ,int,int ) ;

__attribute__((used)) static int cuda_get_buffer(AVHWFramesContext *ctx, AVFrame *frame)
{
    int res;

    frame->buf[0] = av_buffer_pool_get(ctx->pool);
    if (!frame->buf[0])
        return AVERROR(ENOMEM);

    res = av_image_fill_arrays(frame->data, frame->linesize, frame->buf[0]->data,
                               ctx->sw_format, ctx->width, ctx->height, CUDA_FRAME_ALIGNMENT);
    if (res < 0)
        return res;



    if (ctx->sw_format == AV_PIX_FMT_YUV420P) {
        frame->linesize[1] = frame->linesize[2] = frame->linesize[0] / 2;
        frame->data[2] = frame->data[1];
        frame->data[1] = frame->data[2] + frame->linesize[2] * ctx->height / 2;
    }

    frame->format = AV_PIX_FMT_CUDA;
    frame->width = ctx->width;
    frame->height = ctx->height;

    return 0;
}
