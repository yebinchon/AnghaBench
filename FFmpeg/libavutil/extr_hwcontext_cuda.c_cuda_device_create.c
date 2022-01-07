
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {TYPE_1__* internal; int * stream; int cuda_ctx; } ;
struct TYPE_10__ {TYPE_4__* hwctx; } ;
struct TYPE_9__ {int (* cuCtxPopCurrent ) (int *) ;int (* cuCtxCreate ) (int *,int ,int ) ;int (* cuDeviceGet ) (int *,int) ;int (* cuInit ) (int ) ;} ;
struct TYPE_8__ {int is_allocated; TYPE_2__* cuda_dl; } ;
typedef TYPE_2__ CudaFunctions ;
typedef int CUdevice ;
typedef int CUcontext ;
typedef TYPE_3__ AVHWDeviceContext ;
typedef int AVDictionary ;
typedef TYPE_4__ AVCUDADeviceContext ;


 int AVERROR_UNKNOWN ;
 int CHECK_CU (int ) ;
 int CU_CTX_SCHED_BLOCKING_SYNC ;
 scalar_t__ cuda_device_init (TYPE_3__*) ;
 int cuda_device_uninit (TYPE_3__*) ;
 int strtol (char const*,int *,int ) ;
 int stub1 (int ) ;
 int stub2 (int *,int) ;
 int stub3 (int *,int ,int ) ;
 int stub4 (int *) ;

__attribute__((used)) static int cuda_device_create(AVHWDeviceContext *device_ctx,
                              const char *device,
                              AVDictionary *opts, int flags)
{
    AVCUDADeviceContext *hwctx = device_ctx->hwctx;
    CudaFunctions *cu;
    CUdevice cu_device;
    CUcontext dummy;
    int ret, device_idx = 0;

    if (device)
        device_idx = strtol(device, ((void*)0), 0);

    if (cuda_device_init(device_ctx) < 0)
        goto error;

    cu = hwctx->internal->cuda_dl;

    ret = CHECK_CU(cu->cuInit(0));
    if (ret < 0)
        goto error;

    ret = CHECK_CU(cu->cuDeviceGet(&cu_device, device_idx));
    if (ret < 0)
        goto error;

    ret = CHECK_CU(cu->cuCtxCreate(&hwctx->cuda_ctx, CU_CTX_SCHED_BLOCKING_SYNC, cu_device));
    if (ret < 0)
        goto error;


    hwctx->stream = ((void*)0);

    CHECK_CU(cu->cuCtxPopCurrent(&dummy));

    hwctx->internal->is_allocated = 1;

    return 0;

error:
    cuda_device_uninit(device_ctx);
    return AVERROR_UNKNOWN;
}
