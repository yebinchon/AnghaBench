
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ format; } ;
struct TYPE_11__ {scalar_t__ sw_format; } ;
typedef TYPE_1__ AVHWFramesContext ;
typedef TYPE_2__ AVFrame ;


 int AVERROR (int ) ;
 scalar_t__ AV_PIX_FMT_NONE ;
 int ENOSYS ;
 int av_frame_copy_props (TYPE_2__*,TYPE_2__ const*) ;
 int dxva2_map_frame (TYPE_1__*,TYPE_2__*,TYPE_2__ const*,int) ;

__attribute__((used)) static int dxva2_map_from(AVHWFramesContext *ctx,
                          AVFrame *dst, const AVFrame *src, int flags)
{
    int err;

    if (dst->format != AV_PIX_FMT_NONE && dst->format != ctx->sw_format)
        return AVERROR(ENOSYS);
    dst->format = ctx->sw_format;

    err = dxva2_map_frame(ctx, dst, src, flags);
    if (err < 0)
        return err;

    err = av_frame_copy_props(dst, src);
    if (err < 0)
        return err;

    return 0;
}
