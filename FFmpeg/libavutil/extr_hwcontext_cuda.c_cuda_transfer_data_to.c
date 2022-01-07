
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_9__ ;
typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_22__ {int stream; int cuda_ctx; TYPE_2__* internal; } ;
struct TYPE_21__ {int height; int * linesize; scalar_t__* data; } ;
struct TYPE_20__ {TYPE_9__* hwctx; } ;
struct TYPE_19__ {TYPE_7__* device_ctx; TYPE_1__* internal; } ;
struct TYPE_18__ {int shift_height; } ;
struct TYPE_17__ {int Height; int WidthInBytes; int dstPitch; int srcPitch; int dstDevice; scalar_t__ srcHost; int dstMemoryType; int srcMemoryType; } ;
struct TYPE_16__ {int (* cuCtxPopCurrent ) (int *) ;int (* cuMemcpy2DAsync ) (TYPE_4__*,int ) ;int (* cuCtxPushCurrent ) (int ) ;} ;
struct TYPE_15__ {TYPE_3__* cuda_dl; } ;
struct TYPE_14__ {TYPE_5__* priv; } ;
typedef TYPE_3__ CudaFunctions ;
typedef int CUdeviceptr ;
typedef int CUcontext ;
typedef TYPE_4__ CUDA_MEMCPY2D ;
typedef TYPE_5__ CUDAFramesContext ;
typedef TYPE_6__ AVHWFramesContext ;
typedef TYPE_7__ AVHWDeviceContext ;
typedef TYPE_8__ AVFrame ;
typedef TYPE_9__ AVCUDADeviceContext ;


 int CHECK_CU (int ) ;
 int CU_MEMORYTYPE_DEVICE ;
 int CU_MEMORYTYPE_HOST ;
 int FFMIN (int ,int ) ;
 int FF_ARRAY_ELEMS (scalar_t__*) ;
 int stub1 (int ) ;
 int stub2 (TYPE_4__*,int ) ;
 int stub3 (int *) ;

__attribute__((used)) static int cuda_transfer_data_to(AVHWFramesContext *ctx, AVFrame *dst,
                                 const AVFrame *src)
{
    CUDAFramesContext *priv = ctx->internal->priv;
    AVHWDeviceContext *device_ctx = ctx->device_ctx;
    AVCUDADeviceContext *hwctx = device_ctx->hwctx;
    CudaFunctions *cu = hwctx->internal->cuda_dl;

    CUcontext dummy;
    int i, ret;

    ret = CHECK_CU(cu->cuCtxPushCurrent(hwctx->cuda_ctx));
    if (ret < 0)
        return ret;

    for (i = 0; i < FF_ARRAY_ELEMS(src->data) && src->data[i]; i++) {
        CUDA_MEMCPY2D cpy = {
            .srcMemoryType = CU_MEMORYTYPE_HOST,
            .dstMemoryType = CU_MEMORYTYPE_DEVICE,
            .srcHost = src->data[i],
            .dstDevice = (CUdeviceptr)dst->data[i],
            .srcPitch = src->linesize[i],
            .dstPitch = dst->linesize[i],
            .WidthInBytes = FFMIN(src->linesize[i], dst->linesize[i]),
            .Height = src->height >> (i ? priv->shift_height : 0),
        };

        ret = CHECK_CU(cu->cuMemcpy2DAsync(&cpy, hwctx->stream));
        if (ret < 0)
            goto exit;
    }

exit:
    CHECK_CU(cu->cuCtxPopCurrent(&dummy));

    return 0;
}
