
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ sw_format; TYPE_1__* internal; int height; int width; int pool; } ;
struct TYPE_8__ {int shift_height; int shift_width; } ;
struct TYPE_7__ {int pool_internal; TYPE_2__* priv; } ;
typedef TYPE_2__ CUDAFramesContext ;
typedef TYPE_3__ AVHWFramesContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int CUDA_FRAME_ALIGNMENT ;
 int ENOMEM ;
 int ENOSYS ;
 int FF_ARRAY_ELEMS (scalar_t__*) ;
 int av_buffer_pool_init2 (int,TYPE_3__*,int ,int *) ;
 int av_get_pix_fmt_name (scalar_t__) ;
 int av_image_get_buffer_size (scalar_t__,int ,int ,int ) ;
 int av_log (TYPE_3__*,int ,char*,int ) ;
 int av_pix_fmt_get_chroma_sub_sample (scalar_t__,int *,int *) ;
 int cuda_pool_alloc ;
 scalar_t__* supported_formats ;

__attribute__((used)) static int cuda_frames_init(AVHWFramesContext *ctx)
{
    CUDAFramesContext *priv = ctx->internal->priv;
    int i;

    for (i = 0; i < FF_ARRAY_ELEMS(supported_formats); i++) {
        if (ctx->sw_format == supported_formats[i])
            break;
    }
    if (i == FF_ARRAY_ELEMS(supported_formats)) {
        av_log(ctx, AV_LOG_ERROR, "Pixel format '%s' is not supported\n",
               av_get_pix_fmt_name(ctx->sw_format));
        return AVERROR(ENOSYS);
    }

    av_pix_fmt_get_chroma_sub_sample(ctx->sw_format, &priv->shift_width, &priv->shift_height);

    if (!ctx->pool) {
        int size = av_image_get_buffer_size(ctx->sw_format, ctx->width, ctx->height, CUDA_FRAME_ALIGNMENT);
        if (size < 0)
            return size;

        ctx->internal->pool_internal = av_buffer_pool_init2(size, ctx, cuda_pool_alloc, ((void*)0));
        if (!ctx->internal->pool_internal)
            return AVERROR(ENOMEM);
    }

    return 0;
}
