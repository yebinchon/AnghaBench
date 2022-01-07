
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ cl_int ;
struct TYPE_11__ {TYPE_3__* priv; } ;
struct TYPE_9__ {int program; TYPE_1__* hwctx; } ;
struct TYPE_10__ {scalar_t__ kernel_name; int loaded; int kernel; TYPE_2__ ocf; int command_queue; int source_file; } ;
struct TYPE_8__ {int device_id; int context; } ;
typedef TYPE_3__ ProgramOpenCLContext ;
typedef TYPE_4__ AVFilterContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 scalar_t__ CL_INVALID_KERNEL_NAME ;
 int EIO ;
 int av_log (TYPE_4__*,int ,char*,scalar_t__) ;
 int clCreateCommandQueue (int ,int ,int ,scalar_t__*) ;
 int clCreateKernel (int ,scalar_t__,scalar_t__*) ;
 int ff_opencl_filter_load_program_from_file (TYPE_4__*,int ) ;

__attribute__((used)) static int program_opencl_load(AVFilterContext *avctx)
{
    ProgramOpenCLContext *ctx = avctx->priv;
    cl_int cle;
    int err;

    err = ff_opencl_filter_load_program_from_file(avctx, ctx->source_file);
    if (err < 0)
        return err;

    ctx->command_queue = clCreateCommandQueue(ctx->ocf.hwctx->context,
                                              ctx->ocf.hwctx->device_id,
                                              0, &cle);
    if (!ctx->command_queue) {
        av_log(avctx, AV_LOG_ERROR, "Failed to create OpenCL "
               "command queue: %d.\n", cle);
        return AVERROR(EIO);
    }

    ctx->kernel = clCreateKernel(ctx->ocf.program, ctx->kernel_name, &cle);
    if (!ctx->kernel) {
        if (cle == CL_INVALID_KERNEL_NAME) {
            av_log(avctx, AV_LOG_ERROR, "Kernel function '%s' not found in "
                   "program.\n", ctx->kernel_name);
        } else {
            av_log(avctx, AV_LOG_ERROR, "Failed to create kernel: %d.\n", cle);
        }
        return AVERROR(EIO);
    }

    ctx->loaded = 1;
    return 0;
}
