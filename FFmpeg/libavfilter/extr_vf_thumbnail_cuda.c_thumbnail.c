
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int cu_func_ushort2; int cu_func_ushort; int cu_func_uchar; int cu_func_uchar2; } ;
typedef TYPE_2__ ThumbnailCudaContext ;
struct TYPE_13__ {TYPE_2__* priv; } ;
struct TYPE_12__ {int width; int height; int * linesize; int * data; TYPE_1__* hw_frames_ctx; } ;
struct TYPE_11__ {int sw_format; } ;
struct TYPE_9__ {scalar_t__ data; } ;
typedef TYPE_3__ AVHWFramesContext ;
typedef TYPE_4__ AVFrame ;
typedef TYPE_5__ AVFilterContext ;


 int AVERROR_BUG ;






 int thumbnail_kernel (TYPE_5__*,int ,int,int*,int ,int,int,int ,int) ;

__attribute__((used)) static int thumbnail(AVFilterContext *ctx, int *histogram, AVFrame *in)
{
    AVHWFramesContext *in_frames_ctx = (AVHWFramesContext*)in->hw_frames_ctx->data;
    ThumbnailCudaContext *s = ctx->priv;

    switch (in_frames_ctx->sw_format) {
    case 133:
        thumbnail_kernel(ctx, s->cu_func_uchar, 1,
            histogram, in->data[0], in->width, in->height, in->linesize[0], 1);
        thumbnail_kernel(ctx, s->cu_func_uchar2, 2,
            histogram + 256, in->data[1], in->width / 2, in->height / 2, in->linesize[1], 1);
        break;
    case 130:
        thumbnail_kernel(ctx, s->cu_func_uchar, 1,
            histogram, in->data[0], in->width, in->height, in->linesize[0], 1);
        thumbnail_kernel(ctx, s->cu_func_uchar, 1,
            histogram + 256, in->data[1], in->width / 2, in->height / 2, in->linesize[1], 1);
        thumbnail_kernel(ctx, s->cu_func_uchar, 1,
            histogram + 512, in->data[2], in->width / 2, in->height / 2, in->linesize[2], 1);
        break;
    case 129:
        thumbnail_kernel(ctx, s->cu_func_uchar, 1,
            histogram, in->data[0], in->width, in->height, in->linesize[0], 1);
        thumbnail_kernel(ctx, s->cu_func_uchar, 1,
            histogram + 256, in->data[1], in->width, in->height, in->linesize[1], 1);
        thumbnail_kernel(ctx, s->cu_func_uchar, 1,
            histogram + 512, in->data[2], in->width, in->height, in->linesize[2], 1);
        break;
    case 132:
    case 131:
        thumbnail_kernel(ctx, s->cu_func_ushort, 1,
            histogram, in->data[0], in->width, in->height, in->linesize[0], 2);
        thumbnail_kernel(ctx, s->cu_func_ushort2, 2,
            histogram + 256, in->data[1], in->width / 2, in->height / 2, in->linesize[1], 2);
        break;
    case 128:
        thumbnail_kernel(ctx, s->cu_func_ushort2, 1,
            histogram, in->data[0], in->width, in->height, in->linesize[0], 2);
        thumbnail_kernel(ctx, s->cu_func_ushort2, 1,
            histogram + 256, in->data[1], in->width, in->height, in->linesize[1], 2);
        thumbnail_kernel(ctx, s->cu_func_ushort2, 1,
            histogram + 512, in->data[2], in->width, in->height, in->linesize[2], 2);
        break;
    default:
        return AVERROR_BUG;
    }

    return 0;
}
