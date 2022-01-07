
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ data; } ;
struct TYPE_9__ {TYPE_1__* priv; } ;
struct TYPE_8__ {int hwctx; } ;
struct TYPE_7__ {TYPE_2__* device; int hwctx; TYPE_5__* device_ref; } ;
typedef TYPE_1__ OpenCLFilterContext ;
typedef TYPE_2__ AVHWDeviceContext ;
typedef TYPE_3__ AVFilterContext ;
typedef int AVBufferRef ;


 int AVERROR (int ) ;
 int ENOMEM ;
 TYPE_5__* av_buffer_ref (int *) ;
 int av_buffer_unref (TYPE_5__**) ;

__attribute__((used)) static int opencl_filter_set_device(AVFilterContext *avctx,
                                    AVBufferRef *device)
{
    OpenCLFilterContext *ctx = avctx->priv;

    av_buffer_unref(&ctx->device_ref);

    ctx->device_ref = av_buffer_ref(device);
    if (!ctx->device_ref)
        return AVERROR(ENOMEM);

    ctx->device = (AVHWDeviceContext*)ctx->device_ref->data;
    ctx->hwctx = ctx->device->hwctx;

    return 0;
}
