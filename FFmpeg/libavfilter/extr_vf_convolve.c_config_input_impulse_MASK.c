#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_1__** inputs; } ;
struct TYPE_7__ {TYPE_3__* dst; } ;
struct TYPE_6__ {scalar_t__ w; scalar_t__ h; scalar_t__ format; } ;
typedef  TYPE_2__ AVFilterLink ;
typedef  TYPE_3__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC2(AVFilterLink *inlink)
{
    AVFilterContext *ctx  = inlink->dst;

    if (ctx->inputs[0]->w != ctx->inputs[1]->w ||
        ctx->inputs[0]->h != ctx->inputs[1]->h) {
        FUNC1(ctx, AV_LOG_ERROR, "Width and height of input videos must be same.\n");
        return FUNC0(EINVAL);
    }
    if (ctx->inputs[0]->format != ctx->inputs[1]->format) {
        FUNC1(ctx, AV_LOG_ERROR, "Inputs must be of same pixel format.\n");
        return FUNC0(EINVAL);
    }

    return 0;
}