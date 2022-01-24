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
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  cuda_dl; } ;
struct TYPE_9__ {TYPE_6__* internal; } ;
struct TYPE_8__ {TYPE_2__* hwctx; } ;
typedef  TYPE_1__ AVHWDeviceContext ;
typedef  TYPE_2__ AVCUDADeviceContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 TYPE_6__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static int FUNC5(AVHWDeviceContext *ctx)
{
    AVCUDADeviceContext *hwctx = ctx->hwctx;
    int ret;

    if (!hwctx->internal) {
        hwctx->internal = FUNC2(sizeof(*hwctx->internal));
        if (!hwctx->internal)
            return FUNC0(ENOMEM);
    }

    if (!hwctx->internal->cuda_dl) {
        ret = FUNC4(&hwctx->internal->cuda_dl, ctx);
        if (ret < 0) {
            FUNC1(ctx, AV_LOG_ERROR, "Could not dynamically load CUDA\n");
            goto error;
        }
    }

    return 0;

error:
    FUNC3(ctx);
    return ret;
}