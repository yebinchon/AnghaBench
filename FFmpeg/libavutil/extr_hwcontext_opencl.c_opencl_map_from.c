
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ format; } ;
struct TYPE_9__ {scalar_t__ sw_format; } ;
typedef TYPE_1__ AVHWFramesContext ;
typedef TYPE_2__ AVFrame ;


 int AVERROR (int ) ;
 scalar_t__ AV_PIX_FMT_OPENCL ;
 int ENOSYS ;
 int av_assert0 (int) ;
 int opencl_map_frame (TYPE_1__*,TYPE_2__*,TYPE_2__ const*,int) ;

__attribute__((used)) static int opencl_map_from(AVHWFramesContext *hwfc, AVFrame *dst,
                           const AVFrame *src, int flags)
{
    av_assert0(src->format == AV_PIX_FMT_OPENCL);
    if (hwfc->sw_format != dst->format)
        return AVERROR(ENOSYS);
    return opencl_map_frame(hwfc, dst, src, flags);
}
