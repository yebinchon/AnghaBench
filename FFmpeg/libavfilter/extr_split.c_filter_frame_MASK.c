#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int nb_outputs; int /*<<< orphan*/ * outputs; } ;
struct TYPE_4__ {TYPE_2__* dst; } ;
typedef  int /*<<< orphan*/  AVFrame ;
typedef  TYPE_1__ AVFilterLink ;
typedef  TYPE_2__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(AVFilterLink *inlink, AVFrame *frame)
{
    AVFilterContext *ctx = inlink->dst;
    int i, ret = AVERROR_EOF;

    for (i = 0; i < ctx->nb_outputs; i++) {
        AVFrame *buf_out;

        if (FUNC4(ctx->outputs[i]))
            continue;
        buf_out = FUNC1(frame);
        if (!buf_out) {
            ret = FUNC0(ENOMEM);
            break;
        }

        ret = FUNC3(ctx->outputs[i], buf_out);
        if (ret < 0)
            break;
    }
    FUNC2(&frame);
    return ret;
}