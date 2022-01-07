
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ format; } ;
struct TYPE_11__ {int device_ctx; } ;
typedef TYPE_1__ AVHWFramesContext ;
typedef TYPE_2__ AVFrame ;


 int AVERROR (int ) ;
 scalar_t__ AV_PIX_FMT_NONE ;
 int ENOSYS ;
 int av_frame_copy_props (TYPE_2__*,TYPE_2__ const*) ;
 int vaapi_get_image_format (int ,scalar_t__,int *) ;
 int vaapi_map_frame (TYPE_1__*,TYPE_2__*,TYPE_2__ const*,int) ;

__attribute__((used)) static int vaapi_map_to_memory(AVHWFramesContext *hwfc, AVFrame *dst,
                               const AVFrame *src, int flags)
{
    int err;

    if (dst->format != AV_PIX_FMT_NONE) {
        err = vaapi_get_image_format(hwfc->device_ctx, dst->format, ((void*)0));
        if (err < 0)
            return AVERROR(ENOSYS);
    }

    err = vaapi_map_frame(hwfc, dst, src, flags);
    if (err)
        return err;

    err = av_frame_copy_props(dst, src);
    if (err)
        return err;

    return 0;
}
