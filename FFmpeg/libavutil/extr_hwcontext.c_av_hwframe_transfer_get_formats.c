
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
typedef enum AVHWFrameTransferDirection { ____Placeholder_AVHWFrameTransferDirection } AVHWFrameTransferDirection ;
struct TYPE_10__ {scalar_t__ data; } ;
struct TYPE_9__ {TYPE_2__* internal; } ;
struct TYPE_8__ {TYPE_1__* hw_type; } ;
struct TYPE_7__ {int (* transfer_get_formats ) (TYPE_3__*,int,int**) ;} ;
typedef TYPE_3__ AVHWFramesContext ;
typedef TYPE_4__ AVBufferRef ;


 int AVERROR (int ) ;
 int ENOSYS ;
 int stub1 (TYPE_3__*,int,int**) ;

int av_hwframe_transfer_get_formats(AVBufferRef *hwframe_ref,
                                    enum AVHWFrameTransferDirection dir,
                                    enum AVPixelFormat **formats, int flags)
{
    AVHWFramesContext *ctx = (AVHWFramesContext*)hwframe_ref->data;

    if (!ctx->internal->hw_type->transfer_get_formats)
        return AVERROR(ENOSYS);

    return ctx->internal->hw_type->transfer_get_formats(ctx, dir, formats);
}
