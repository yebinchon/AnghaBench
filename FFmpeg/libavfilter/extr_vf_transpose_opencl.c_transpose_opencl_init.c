
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int cl_int ;
struct TYPE_8__ {int program; TYPE_1__* hwctx; } ;
struct TYPE_9__ {int initialised; scalar_t__ kernel; scalar_t__ command_queue; TYPE_2__ ocf; } ;
typedef TYPE_3__ TransposeOpenCLContext ;
struct TYPE_10__ {TYPE_3__* priv; } ;
struct TYPE_7__ {int device_id; int context; } ;
typedef TYPE_4__ AVFilterContext ;


 int AVERROR (int ) ;
 int CL_FAIL_ON_ERROR (int ,char*,int ) ;
 int EIO ;
 scalar_t__ clCreateCommandQueue (int ,int ,int ,int *) ;
 scalar_t__ clCreateKernel (int ,char*,int *) ;
 int clReleaseCommandQueue (scalar_t__) ;
 int clReleaseKernel (scalar_t__) ;
 int ff_opencl_filter_load_program (TYPE_4__*,int *,int) ;
 int ff_opencl_source_transpose ;

__attribute__((used)) static int transpose_opencl_init(AVFilterContext *avctx)
{
    TransposeOpenCLContext *ctx = avctx->priv;
    cl_int cle;
    int err;

    err = ff_opencl_filter_load_program(avctx, &ff_opencl_source_transpose, 1);
    if (err < 0)
        goto fail;

    ctx->command_queue = clCreateCommandQueue(ctx->ocf.hwctx->context,
                                              ctx->ocf.hwctx->device_id,
                                              0, &cle);
    CL_FAIL_ON_ERROR(AVERROR(EIO), "Failed to create OpenCL "
                     "command queue %d.\n", cle);

    ctx->kernel = clCreateKernel(ctx->ocf.program, "transpose", &cle);
    CL_FAIL_ON_ERROR(AVERROR(EIO), "Failed to create kernel %d.\n", cle);


    ctx->initialised = 1;
    return 0;

fail:
    if (ctx->command_queue)
        clReleaseCommandQueue(ctx->command_queue);
    if (ctx->kernel)
        clReleaseKernel(ctx->kernel);
    return err;
}
