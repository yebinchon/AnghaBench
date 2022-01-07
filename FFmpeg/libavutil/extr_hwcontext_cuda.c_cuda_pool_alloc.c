
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_11__ {int cuda_ctx; TYPE_1__* internal; } ;
struct TYPE_10__ {TYPE_5__* hwctx; } ;
struct TYPE_9__ {TYPE_4__* device_ctx; } ;
struct TYPE_8__ {int (* cuCtxPopCurrent ) (int **) ;int (* cuMemFree ) (scalar_t__) ;int (* cuMemAlloc ) (scalar_t__*,int) ;int (* cuCtxPushCurrent ) (int ) ;} ;
struct TYPE_7__ {TYPE_2__* cuda_dl; } ;
typedef TYPE_2__ CudaFunctions ;
typedef scalar_t__ CUdeviceptr ;
typedef int * CUcontext ;
typedef TYPE_3__ AVHWFramesContext ;
typedef TYPE_4__ AVHWDeviceContext ;
typedef TYPE_5__ AVCUDADeviceContext ;
typedef int AVBufferRef ;


 int CHECK_CU (int ) ;
 int * av_buffer_create (int *,int,int ,TYPE_3__*,int ) ;
 int cuda_buffer_free ;
 int stub1 (int ) ;
 int stub2 (scalar_t__*,int) ;
 int stub3 (scalar_t__) ;
 int stub4 (int **) ;

__attribute__((used)) static AVBufferRef *cuda_pool_alloc(void *opaque, int size)
{
    AVHWFramesContext *ctx = opaque;
    AVHWDeviceContext *device_ctx = ctx->device_ctx;
    AVCUDADeviceContext *hwctx = device_ctx->hwctx;
    CudaFunctions *cu = hwctx->internal->cuda_dl;

    AVBufferRef *ret = ((void*)0);
    CUcontext dummy = ((void*)0);
    CUdeviceptr data;
    int err;

    err = CHECK_CU(cu->cuCtxPushCurrent(hwctx->cuda_ctx));
    if (err < 0)
        return ((void*)0);

    err = CHECK_CU(cu->cuMemAlloc(&data, size));
    if (err < 0)
        goto fail;

    ret = av_buffer_create((uint8_t*)data, size, cuda_buffer_free, ctx, 0);
    if (!ret) {
        CHECK_CU(cu->cuMemFree(data));
        goto fail;
    }

fail:
    CHECK_CU(cu->cuCtxPopCurrent(&dummy));
    return ret;
}
