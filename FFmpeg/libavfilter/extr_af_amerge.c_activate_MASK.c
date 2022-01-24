#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_5__ {int nb_inputs; int /*<<< orphan*/ * inputs; int /*<<< orphan*/ * outputs; } ;
typedef  TYPE_1__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC8(AVFilterContext *ctx)
{
    int i, status;
    int ret, nb_samples;
    int64_t pts;

    FUNC1(ctx->outputs[0], ctx);

    nb_samples = FUNC3(ctx->inputs[0]);
    for (i = 1; i < ctx->nb_inputs && nb_samples > 0; i++) {
        nb_samples = FUNC0(FUNC3(ctx->inputs[i]), nb_samples);
    }

    if (nb_samples) {
        ret = FUNC7(ctx, nb_samples);
        if (ret < 0)
            return ret;
    }

    for (i = 0; i < ctx->nb_inputs; i++) {
        if (FUNC3(ctx->inputs[i]))
            continue;

        if (FUNC2(ctx->inputs[i], &status, &pts)) {
            FUNC6(ctx->outputs[0], status, pts);
            return 0;
        } else if (FUNC5(ctx->outputs[0])) {
            FUNC4(ctx->inputs[i]);
            return 0;
        }
    }

    return 0;
}