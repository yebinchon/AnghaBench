#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/ * outputs; TYPE_1__* internal; TYPE_2__* priv; } ;
struct TYPE_16__ {TYPE_5__* dst; } ;
struct TYPE_15__ {int /*<<< orphan*/  height; } ;
struct TYPE_14__ {int /*<<< orphan*/  do_lumakey_slice; } ;
struct TYPE_13__ {int (* execute ) (TYPE_5__*,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_2__ LumakeyContext ;
typedef  TYPE_3__ AVFrame ;
typedef  TYPE_4__ AVFilterLink ;
typedef  TYPE_5__ AVFilterContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_3__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 int FUNC4 (TYPE_5__*,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(AVFilterLink *link, AVFrame *frame)
{
    AVFilterContext *ctx = link->dst;
    LumakeyContext *s = ctx->priv;
    int ret;

    if ((ret = FUNC1(frame)))
        return ret;

    if ((ret = ctx->internal->execute(ctx, s->do_lumakey_slice, frame, NULL, FUNC0(frame->height, FUNC3(ctx)))))
        return ret;

    return FUNC2(ctx->outputs[0], frame);
}