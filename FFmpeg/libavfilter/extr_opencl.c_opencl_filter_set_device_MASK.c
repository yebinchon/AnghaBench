#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ data; } ;
struct TYPE_9__ {TYPE_1__* priv; } ;
struct TYPE_8__ {int /*<<< orphan*/  hwctx; } ;
struct TYPE_7__ {TYPE_2__* device; int /*<<< orphan*/  hwctx; TYPE_5__* device_ref; } ;
typedef  TYPE_1__ OpenCLFilterContext ;
typedef  TYPE_2__ AVHWDeviceContext ;
typedef  TYPE_3__ AVFilterContext ;
typedef  int /*<<< orphan*/  AVBufferRef ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 TYPE_5__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__**) ; 

__attribute__((used)) static int FUNC3(AVFilterContext *avctx,
                                    AVBufferRef *device)
{
    OpenCLFilterContext *ctx = avctx->priv;

    FUNC2(&ctx->device_ref);

    ctx->device_ref = FUNC1(device);
    if (!ctx->device_ref)
        return FUNC0(ENOMEM);

    ctx->device = (AVHWDeviceContext*)ctx->device_ref->data;
    ctx->hwctx  = ctx->device->hwctx;

    return 0;
}