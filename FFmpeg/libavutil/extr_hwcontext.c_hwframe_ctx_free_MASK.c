#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_7__ {struct TYPE_7__* internal; struct TYPE_7__* priv; struct TYPE_7__* hwctx; int /*<<< orphan*/  device_ref; int /*<<< orphan*/  source_frames; int /*<<< orphan*/  (* free ) (TYPE_2__*) ;TYPE_1__* hw_type; scalar_t__ pool_internal; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* frames_uninit ) (TYPE_2__*) ;} ;
typedef  TYPE_2__ AVHWFramesContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC5(void *opaque, uint8_t *data)
{
    AVHWFramesContext *ctx = (AVHWFramesContext*)data;

    if (ctx->internal->pool_internal)
        FUNC0(&ctx->internal->pool_internal);

    if (ctx->internal->hw_type->frames_uninit)
        ctx->internal->hw_type->frames_uninit(ctx);

    if (ctx->free)
        ctx->free(ctx);

    FUNC1(&ctx->internal->source_frames);

    FUNC1(&ctx->device_ref);

    FUNC2(&ctx->hwctx);
    FUNC2(&ctx->internal->priv);
    FUNC2(&ctx->internal);
    FUNC2(&ctx);
}