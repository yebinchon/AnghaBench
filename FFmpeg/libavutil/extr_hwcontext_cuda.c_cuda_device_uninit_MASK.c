#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_1__* cuda_dl; scalar_t__ is_allocated; } ;
struct TYPE_9__ {TYPE_6__* internal; int /*<<< orphan*/ * cuda_ctx; } ;
struct TYPE_8__ {TYPE_3__* hwctx; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* cuCtxDestroy ) (int /*<<< orphan*/ *) ;} ;
typedef  TYPE_1__ CudaFunctions ;
typedef  TYPE_2__ AVHWDeviceContext ;
typedef  TYPE_3__ AVCUDADeviceContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(AVHWDeviceContext *device_ctx)
{
    AVCUDADeviceContext *hwctx = device_ctx->hwctx;

    if (hwctx->internal) {
        CudaFunctions *cu = hwctx->internal->cuda_dl;
        if (hwctx->internal->is_allocated && hwctx->cuda_ctx) {
            FUNC0(cu->cuCtxDestroy(hwctx->cuda_ctx));
            hwctx->cuda_ctx = NULL;
        }
        FUNC2(&hwctx->internal->cuda_dl);
    }

    FUNC1(&hwctx->internal);
}