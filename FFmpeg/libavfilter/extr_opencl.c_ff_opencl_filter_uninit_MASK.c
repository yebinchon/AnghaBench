#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ cl_int ;
struct TYPE_6__ {TYPE_1__* priv; } ;
struct TYPE_5__ {int /*<<< orphan*/  device_ref; scalar_t__ program; } ;
typedef  TYPE_1__ OpenCLFilterContext ;
typedef  TYPE_2__ AVFilterContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 scalar_t__ CL_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 

void FUNC3(AVFilterContext *avctx)
{
    OpenCLFilterContext *ctx = avctx->priv;
    cl_int cle;

    if (ctx->program) {
        cle = FUNC2(ctx->program);
        if (cle != CL_SUCCESS)
            FUNC1(avctx, AV_LOG_ERROR, "Failed to release "
                   "program: %d.\n", cle);
    }

    FUNC0(&ctx->device_ref);
}