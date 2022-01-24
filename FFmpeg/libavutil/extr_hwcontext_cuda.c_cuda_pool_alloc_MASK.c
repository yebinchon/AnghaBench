#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_11__ {int /*<<< orphan*/  cuda_ctx; TYPE_1__* internal; } ;
struct TYPE_10__ {TYPE_5__* hwctx; } ;
struct TYPE_9__ {TYPE_4__* device_ctx; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* cuCtxPopCurrent ) (int /*<<< orphan*/ **) ;int /*<<< orphan*/  (* cuMemFree ) (scalar_t__) ;int /*<<< orphan*/  (* cuMemAlloc ) (scalar_t__*,int) ;int /*<<< orphan*/  (* cuCtxPushCurrent ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_7__ {TYPE_2__* cuda_dl; } ;
typedef  TYPE_2__ CudaFunctions ;
typedef  scalar_t__ CUdeviceptr ;
typedef  int /*<<< orphan*/ * CUcontext ;
typedef  TYPE_3__ AVHWFramesContext ;
typedef  TYPE_4__ AVHWDeviceContext ;
typedef  TYPE_5__ AVCUDADeviceContext ;
typedef  int /*<<< orphan*/  AVBufferRef ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cuda_buffer_free ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **) ; 

__attribute__((used)) static AVBufferRef *FUNC6(void *opaque, int size)
{
    AVHWFramesContext        *ctx = opaque;
    AVHWDeviceContext *device_ctx = ctx->device_ctx;
    AVCUDADeviceContext    *hwctx = device_ctx->hwctx;
    CudaFunctions             *cu = hwctx->internal->cuda_dl;

    AVBufferRef *ret = NULL;
    CUcontext dummy = NULL;
    CUdeviceptr data;
    int err;

    err = FUNC0(cu->cuCtxPushCurrent(hwctx->cuda_ctx));
    if (err < 0)
        return NULL;

    err = FUNC0(cu->cuMemAlloc(&data, size));
    if (err < 0)
        goto fail;

    ret = FUNC1((uint8_t*)data, size, cuda_buffer_free, ctx, 0);
    if (!ret) {
        FUNC0(cu->cuMemFree(data));
        goto fail;
    }

fail:
    FUNC0(cu->cuCtxPopCurrent(&dummy));
    return ret;
}