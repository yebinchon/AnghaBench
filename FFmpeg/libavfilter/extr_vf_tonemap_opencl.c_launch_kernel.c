
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int cl_kernel ;
typedef int cl_int ;
struct TYPE_9__ {float util_mem; int command_queue; } ;
typedef TYPE_1__ TonemapOpenCLContext ;
struct TYPE_11__ {TYPE_1__* priv; } ;
struct TYPE_10__ {float* data; } ;
typedef TYPE_2__ AVFrame ;
typedef TYPE_3__ AVFilterContext ;


 int AVERROR (int ) ;
 int CL_FAIL_ON_ERROR (int,char*,int ) ;
 int CL_SET_KERNEL_ARG (int ,int,int ,float*) ;
 int EIO ;
 int ENOSYS ;
 int clEnqueueNDRangeKernel (int ,int ,int,int *,size_t*,size_t*,int ,int *,int *) ;
 int cl_float ;
 int cl_mem ;
 int ff_opencl_filter_work_size_from_image (TYPE_3__*,size_t*,TYPE_2__*,int,int) ;

__attribute__((used)) static int launch_kernel(AVFilterContext *avctx, cl_kernel kernel,
                         AVFrame *output, AVFrame *input, float peak) {
    TonemapOpenCLContext *ctx = avctx->priv;
    int err = AVERROR(ENOSYS);
    size_t global_work[2];
    size_t local_work[2];
    cl_int cle;

    CL_SET_KERNEL_ARG(kernel, 0, cl_mem, &output->data[0]);
    CL_SET_KERNEL_ARG(kernel, 1, cl_mem, &input->data[0]);
    CL_SET_KERNEL_ARG(kernel, 2, cl_mem, &output->data[1]);
    CL_SET_KERNEL_ARG(kernel, 3, cl_mem, &input->data[1]);
    CL_SET_KERNEL_ARG(kernel, 4, cl_mem, &ctx->util_mem);
    CL_SET_KERNEL_ARG(kernel, 5, cl_float, &peak);

    local_work[0] = 16;
    local_work[1] = 16;

    err = ff_opencl_filter_work_size_from_image(avctx, global_work, output,
                                                1, 16);
    if (err < 0)
        return err;

    cle = clEnqueueNDRangeKernel(ctx->command_queue, kernel, 2, ((void*)0),
                                 global_work, local_work,
                                 0, ((void*)0), ((void*)0));
    CL_FAIL_ON_ERROR(AVERROR(EIO), "Failed to enqueue kernel: %d.\n", cle);
    return 0;
fail:
    return err;
}
