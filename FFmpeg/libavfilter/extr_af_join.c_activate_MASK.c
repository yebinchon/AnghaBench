#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_10__ {int nb_samples; } ;
struct TYPE_9__ {int nb_inputs; int /*<<< orphan*/ * inputs; int /*<<< orphan*/ * outputs; TYPE_1__* priv; } ;
struct TYPE_8__ {TYPE_4__** input_frames; } ;
typedef  TYPE_1__ JoinContext ;
typedef  TYPE_2__ AVFilterContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,TYPE_4__**) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int,TYPE_4__**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC9(AVFilterContext *ctx)
{
    JoinContext *s = ctx->priv;
    int i, ret, status;
    int nb_samples = 0;
    int64_t pts;

    FUNC0(ctx->outputs[0], ctx);

    if (!s->input_frames[0]) {
        ret = FUNC3(ctx->inputs[0], &s->input_frames[0]);
        if (ret < 0) {
            return ret;
        } else if (FUNC1(ctx->inputs[0], &status, &pts)) {
            FUNC7(ctx->outputs[0], status, pts);
            return 0;
        } else {
            if (FUNC6(ctx->outputs[0]) && !s->input_frames[0]) {
                FUNC5(ctx->inputs[0]);
                return 0;
            }
        }
        if (!s->input_frames[0]) {
            return 0;
        }
    }

    nb_samples = s->input_frames[0]->nb_samples;

    for (i = 1; i < ctx->nb_inputs && nb_samples > 0; i++) {
        if (s->input_frames[i])
            continue;

        if (FUNC2(ctx->inputs[i], nb_samples) > 0) {
            ret = FUNC4(ctx->inputs[i], nb_samples, nb_samples, &s->input_frames[i]);
            if (ret < 0) {
                return ret;
            } else if (FUNC1(ctx->inputs[i], &status, &pts)) {
                FUNC7(ctx->outputs[0], status, pts);
                return 0;
            }
        } else {
            if (FUNC6(ctx->outputs[0])) {
                FUNC5(ctx->inputs[i]);
                return 0;
            }
        }
    }

    return FUNC8(ctx);
}