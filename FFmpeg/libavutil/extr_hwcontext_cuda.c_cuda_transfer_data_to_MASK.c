#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_9__ ;
typedef  struct TYPE_21__   TYPE_8__ ;
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_22__ {int /*<<< orphan*/  stream; int /*<<< orphan*/  cuda_ctx; TYPE_2__* internal; } ;
struct TYPE_21__ {int height; int /*<<< orphan*/ * linesize; scalar_t__* data; } ;
struct TYPE_20__ {TYPE_9__* hwctx; } ;
struct TYPE_19__ {TYPE_7__* device_ctx; TYPE_1__* internal; } ;
struct TYPE_18__ {int shift_height; } ;
struct TYPE_17__ {int Height; int /*<<< orphan*/  WidthInBytes; int /*<<< orphan*/  dstPitch; int /*<<< orphan*/  srcPitch; int /*<<< orphan*/  dstDevice; scalar_t__ srcHost; int /*<<< orphan*/  dstMemoryType; int /*<<< orphan*/  srcMemoryType; } ;
struct TYPE_16__ {int /*<<< orphan*/  (* cuCtxPopCurrent ) (int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* cuMemcpy2DAsync ) (TYPE_4__*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* cuCtxPushCurrent ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_15__ {TYPE_3__* cuda_dl; } ;
struct TYPE_14__ {TYPE_5__* priv; } ;
typedef  TYPE_3__ CudaFunctions ;
typedef  int /*<<< orphan*/  CUdeviceptr ;
typedef  int /*<<< orphan*/  CUcontext ;
typedef  TYPE_4__ CUDA_MEMCPY2D ;
typedef  TYPE_5__ CUDAFramesContext ;
typedef  TYPE_6__ AVHWFramesContext ;
typedef  TYPE_7__ AVHWDeviceContext ;
typedef  TYPE_8__ AVFrame ;
typedef  TYPE_9__ AVCUDADeviceContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CU_MEMORYTYPE_DEVICE ; 
 int /*<<< orphan*/  CU_MEMORYTYPE_HOST ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(AVHWFramesContext *ctx, AVFrame *dst,
                                 const AVFrame *src)
{
    CUDAFramesContext       *priv = ctx->internal->priv;
    AVHWDeviceContext *device_ctx = ctx->device_ctx;
    AVCUDADeviceContext    *hwctx = device_ctx->hwctx;
    CudaFunctions             *cu = hwctx->internal->cuda_dl;

    CUcontext dummy;
    int i, ret;

    ret = FUNC0(cu->cuCtxPushCurrent(hwctx->cuda_ctx));
    if (ret < 0)
        return ret;

    for (i = 0; i < FUNC2(src->data) && src->data[i]; i++) {
        CUDA_MEMCPY2D cpy = {
            .srcMemoryType = CU_MEMORYTYPE_HOST,
            .dstMemoryType = CU_MEMORYTYPE_DEVICE,
            .srcHost       = src->data[i],
            .dstDevice     = (CUdeviceptr)dst->data[i],
            .srcPitch      = src->linesize[i],
            .dstPitch      = dst->linesize[i],
            .WidthInBytes  = FUNC1(src->linesize[i], dst->linesize[i]),
            .Height        = src->height >> (i ? priv->shift_height : 0),
        };

        ret = FUNC0(cu->cuMemcpy2DAsync(&cpy, hwctx->stream));
        if (ret < 0)
            goto exit;
    }

exit:
    FUNC0(cu->cuCtxPopCurrent(&dummy));

    return 0;
}