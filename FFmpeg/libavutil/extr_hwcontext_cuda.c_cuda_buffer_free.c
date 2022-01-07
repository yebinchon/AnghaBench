
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_10__ {int cuda_ctx; TYPE_1__* internal; } ;
struct TYPE_9__ {TYPE_5__* hwctx; } ;
struct TYPE_8__ {TYPE_4__* device_ctx; } ;
struct TYPE_7__ {int (* cuCtxPopCurrent ) (int *) ;int (* cuMemFree ) (int ) ;int (* cuCtxPushCurrent ) (int ) ;} ;
struct TYPE_6__ {TYPE_2__* cuda_dl; } ;
typedef TYPE_2__ CudaFunctions ;
typedef int CUdeviceptr ;
typedef int CUcontext ;
typedef TYPE_3__ AVHWFramesContext ;
typedef TYPE_4__ AVHWDeviceContext ;
typedef TYPE_5__ AVCUDADeviceContext ;


 int CHECK_CU (int ) ;
 int stub1 (int ) ;
 int stub2 (int ) ;
 int stub3 (int *) ;

__attribute__((used)) static void cuda_buffer_free(void *opaque, uint8_t *data)
{
    AVHWFramesContext *ctx = opaque;
    AVHWDeviceContext *device_ctx = ctx->device_ctx;
    AVCUDADeviceContext *hwctx = device_ctx->hwctx;
    CudaFunctions *cu = hwctx->internal->cuda_dl;

    CUcontext dummy;

    CHECK_CU(cu->cuCtxPushCurrent(hwctx->cuda_ctx));

    CHECK_CU(cu->cuMemFree((CUdeviceptr)data));

    CHECK_CU(cu->cuCtxPopCurrent(&dummy));
}
