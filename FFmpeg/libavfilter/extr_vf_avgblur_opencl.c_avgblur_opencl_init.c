
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int cl_int ;
struct TYPE_10__ {TYPE_3__* priv; } ;
struct TYPE_8__ {int program; TYPE_1__* hwctx; } ;
struct TYPE_9__ {int initialised; void* kernel_vert; void* kernel_horiz; scalar_t__ command_queue; TYPE_2__ ocf; } ;
struct TYPE_7__ {int device_id; int context; } ;
typedef TYPE_3__ AverageBlurOpenCLContext ;
typedef TYPE_4__ AVFilterContext ;


 int AVERROR (int ) ;
 int CL_FAIL_ON_ERROR (int ,char*,int ) ;
 int EIO ;
 scalar_t__ clCreateCommandQueue (int ,int ,int ,int *) ;
 void* clCreateKernel (int ,char*,int *) ;
 int clReleaseCommandQueue (scalar_t__) ;
 int clReleaseKernel (void*) ;
 int ff_opencl_filter_load_program (TYPE_4__*,int *,int) ;
 int ff_opencl_source_avgblur ;

__attribute__((used)) static int avgblur_opencl_init(AVFilterContext *avctx)
{
    AverageBlurOpenCLContext *ctx = avctx->priv;
    cl_int cle;
    int err;

    err = ff_opencl_filter_load_program(avctx, &ff_opencl_source_avgblur, 1);
    if (err < 0)
        goto fail;

    ctx->command_queue = clCreateCommandQueue(ctx->ocf.hwctx->context,
                                              ctx->ocf.hwctx->device_id,
                                              0, &cle);
    CL_FAIL_ON_ERROR(AVERROR(EIO), "Failed to create OpenCL "
                     "command queue %d.\n", cle);

    ctx->kernel_horiz = clCreateKernel(ctx->ocf.program,"avgblur_horiz", &cle);
    CL_FAIL_ON_ERROR(AVERROR(EIO), "Failed to create horizontal "
                     "kernel %d.\n", cle);

    ctx->kernel_vert = clCreateKernel(ctx->ocf.program,"avgblur_vert", &cle);
    CL_FAIL_ON_ERROR(AVERROR(EIO), "Failed to create vertical "
                     "kernel %d.\n", cle);

    ctx->initialised = 1;
    return 0;

fail:
    if (ctx->command_queue)
        clReleaseCommandQueue(ctx->command_queue);
    if (ctx->kernel_horiz)
        clReleaseKernel(ctx->kernel_horiz);
    if (ctx->kernel_vert)
        clReleaseKernel(ctx->kernel_vert);
    return err;
}
