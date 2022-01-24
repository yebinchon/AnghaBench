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
struct TYPE_8__ {int /*<<< orphan*/  is_disabled; int /*<<< orphan*/ * inputs; TYPE_1__* priv; } ;
struct TYPE_7__ {TYPE_3__* src; } ;
struct TYPE_6__ {scalar_t__ delay_count; } ;
typedef  TYPE_1__ CompandContext ;
typedef  TYPE_2__ AVFilterLink ;
typedef  TYPE_3__ AVFilterContext ;

/* Variables and functions */
 int AVERROR_EOF ; 
 int FUNC0 (TYPE_2__*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(AVFilterLink *outlink)
{
    AVFilterContext *ctx = outlink->src;
    CompandContext *s    = ctx->priv;
    int ret = 0;

    ret = FUNC1(ctx->inputs[0]);

    if (ret == AVERROR_EOF && !ctx->is_disabled && s->delay_count)
        ret = FUNC0(outlink);

    return ret;
}