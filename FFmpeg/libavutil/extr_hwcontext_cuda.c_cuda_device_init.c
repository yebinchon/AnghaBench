
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int cuda_dl; } ;
struct TYPE_9__ {TYPE_6__* internal; } ;
struct TYPE_8__ {TYPE_2__* hwctx; } ;
typedef TYPE_1__ AVHWDeviceContext ;
typedef TYPE_2__ AVCUDADeviceContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int ENOMEM ;
 int av_log (TYPE_1__*,int ,char*) ;
 TYPE_6__* av_mallocz (int) ;
 int cuda_device_uninit (TYPE_1__*) ;
 int cuda_load_functions (int *,TYPE_1__*) ;

__attribute__((used)) static int cuda_device_init(AVHWDeviceContext *ctx)
{
    AVCUDADeviceContext *hwctx = ctx->hwctx;
    int ret;

    if (!hwctx->internal) {
        hwctx->internal = av_mallocz(sizeof(*hwctx->internal));
        if (!hwctx->internal)
            return AVERROR(ENOMEM);
    }

    if (!hwctx->internal->cuda_dl) {
        ret = cuda_load_functions(&hwctx->internal->cuda_dl, ctx);
        if (ret < 0) {
            av_log(ctx, AV_LOG_ERROR, "Could not dynamically load CUDA\n");
            goto error;
        }
    }

    return 0;

error:
    cuda_device_uninit(ctx);
    return ret;
}
