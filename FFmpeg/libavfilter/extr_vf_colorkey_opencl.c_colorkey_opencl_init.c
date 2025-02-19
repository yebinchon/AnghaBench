
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int cl_int ;
struct TYPE_12__ {TYPE_4__* priv; } ;
struct TYPE_10__ {float* s; } ;
struct TYPE_9__ {int program; TYPE_1__* hwctx; } ;
struct TYPE_11__ {double blend; int initialized; void* kernel_colorkey; scalar_t__ command_queue; scalar_t__* colorkey_rgba; TYPE_3__ colorkey_rgba_float; TYPE_2__ ocf; } ;
struct TYPE_8__ {int device_id; int context; } ;
typedef TYPE_4__ ColorkeyOpenCLContext ;
typedef TYPE_5__ AVFilterContext ;


 int AVERROR (int ) ;
 int CL_FAIL_ON_ERROR (int ,char*,int ) ;
 int EIO ;
 scalar_t__ clCreateCommandQueue (int ,int ,int ,int *) ;
 void* clCreateKernel (int ,char*,int *) ;
 int clReleaseCommandQueue (scalar_t__) ;
 int clReleaseKernel (void*) ;
 int ff_opencl_filter_load_program (TYPE_5__*,int *,int) ;
 int ff_opencl_source_colorkey ;

__attribute__((used)) static int colorkey_opencl_init(AVFilterContext *avctx)
{
    ColorkeyOpenCLContext *ctx = avctx->priv;
    cl_int cle;
    int err;

    err = ff_opencl_filter_load_program(avctx, &ff_opencl_source_colorkey, 1);
    if (err < 0)
        goto fail;

    ctx->command_queue = clCreateCommandQueue(
        ctx->ocf.hwctx->context,
        ctx->ocf.hwctx->device_id,
        0,
        &cle
    );

    CL_FAIL_ON_ERROR(AVERROR(EIO), "Failed to create OpenCL command queue %d.\n", cle);

    if (ctx->blend > 0.0001) {
        ctx->kernel_colorkey = clCreateKernel(ctx->ocf.program, "colorkey_blend", &cle);
        CL_FAIL_ON_ERROR(AVERROR(EIO), "Failed to create colorkey_blend kernel: %d.\n", cle);
    } else {
        ctx->kernel_colorkey = clCreateKernel(ctx->ocf.program, "colorkey", &cle);
        CL_FAIL_ON_ERROR(AVERROR(EIO), "Failed to create colorkey kernel: %d.\n", cle);
    }

    for (int i = 0; i < 4; ++i) {
        ctx->colorkey_rgba_float.s[i] = (float)ctx->colorkey_rgba[i] / 255.0;
    }

    ctx->initialized = 1;
    return 0;

fail:
    if (ctx->command_queue)
        clReleaseCommandQueue(ctx->command_queue);
    if (ctx->kernel_colorkey)
        clReleaseKernel(ctx->kernel_colorkey);
    return err;
}
