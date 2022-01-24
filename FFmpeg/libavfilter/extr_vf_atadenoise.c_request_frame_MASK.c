#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ available; int /*<<< orphan*/  q; } ;
struct TYPE_6__ {int /*<<< orphan*/ * inputs; int /*<<< orphan*/  is_disabled; TYPE_3__* priv; } ;
struct TYPE_5__ {TYPE_2__* src; } ;
typedef  int /*<<< orphan*/  AVFrame ;
typedef  TYPE_1__ AVFilterLink ;
typedef  TYPE_2__ AVFilterContext ;
typedef  TYPE_3__ ATADenoiseContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(AVFilterLink *outlink)
{
    AVFilterContext *ctx = outlink->src;
    ATADenoiseContext *s = ctx->priv;
    int ret = 0;

    ret = FUNC3(ctx->inputs[0]);

    if (ret == AVERROR_EOF && !ctx->is_disabled && s->available) {
        AVFrame *buf = FUNC1(FUNC2(&s->q, s->available));
        if (!buf)
            return FUNC0(ENOMEM);

        ret = FUNC4(ctx->inputs[0], buf);
        s->available--;
    }

    return ret;
}