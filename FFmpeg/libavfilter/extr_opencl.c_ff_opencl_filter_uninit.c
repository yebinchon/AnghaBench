
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ cl_int ;
struct TYPE_6__ {TYPE_1__* priv; } ;
struct TYPE_5__ {int device_ref; scalar_t__ program; } ;
typedef TYPE_1__ OpenCLFilterContext ;
typedef TYPE_2__ AVFilterContext ;


 int AV_LOG_ERROR ;
 scalar_t__ CL_SUCCESS ;
 int av_buffer_unref (int *) ;
 int av_log (TYPE_2__*,int ,char*,scalar_t__) ;
 scalar_t__ clReleaseProgram (scalar_t__) ;

void ff_opencl_filter_uninit(AVFilterContext *avctx)
{
    OpenCLFilterContext *ctx = avctx->priv;
    cl_int cle;

    if (ctx->program) {
        cle = clReleaseProgram(ctx->program);
        if (cle != CL_SUCCESS)
            av_log(avctx, AV_LOG_ERROR, "Failed to release "
                   "program: %d.\n", cle);
    }

    av_buffer_unref(&ctx->device_ref);
}
