#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_11__ {unsigned int nb_outputs; unsigned int nb_inputs; int /*<<< orphan*/ * inputs; int /*<<< orphan*/ * outputs; TYPE_2__* priv; } ;
struct TYPE_10__ {unsigned int cur_idx; TYPE_1__* in; int /*<<< orphan*/  nb_in_active; } ;
struct TYPE_9__ {int eof; } ;
typedef  TYPE_2__ ConcatContext ;
typedef  int /*<<< orphan*/  AVFrame ;
typedef  TYPE_3__ AVFilterContext ;

/* Variables and functions */
 int FFERROR_NOT_READY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_3__*) ; 
 int FUNC10 (TYPE_3__*,unsigned int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(AVFilterContext *ctx)
{
    ConcatContext *cat = ctx->priv;
    AVFrame *frame;
    unsigned i, j;
    int ret, status;
    int64_t pts;

    /* Forward status back */
    for (i = 0; i < ctx->nb_outputs; i++) {
        status = FUNC7(ctx->outputs[i]);
        if (!status)
            continue;
        for (j = i; j < ctx->nb_inputs; j += ctx->nb_outputs) {
            if (!cat->in[j].eof) {
                cat->in[j].eof = 1;
                FUNC5(ctx->inputs[j], status);
                return 0;
            }
        }

    }

    /* Forward available frames */
    if (cat->cur_idx < ctx->nb_inputs) {
        for (i = 0; i < ctx->nb_outputs; i++) {
            ret = FUNC3(ctx->inputs[cat->cur_idx + i], &frame);
            if (ret < 0)
                return ret;
            if (ret) {
                FUNC1(ctx, 10);
                return FUNC10(ctx, cat->cur_idx + i, frame);
            }
        }
    }

    /* Forward status change */
    if (cat->cur_idx < ctx->nb_inputs) {
        for (i = 0; i < ctx->nb_outputs; i++) {
            ret = FUNC2(ctx->inputs[cat->cur_idx + i], &status, &pts);
            /* TODO use pts */
            if (ret > 0) {
                FUNC0(ctx, cat->cur_idx + i);
                if (cat->cur_idx + ctx->nb_outputs >= ctx->nb_inputs) {
                    FUNC8(ctx->outputs[i], status, pts);
                }
                if (!cat->nb_in_active) {
                    ret = FUNC9(ctx);
                    if (ret < 0)
                        return ret;
                }
                FUNC1(ctx, 10);
                return 0;
            }
        }
    }

    ret = FFERROR_NOT_READY;
    for (i = 0; i < ctx->nb_outputs; i++) {
        if (FUNC6(ctx->outputs[i])) {
            if (cat->in[cat->cur_idx + i].eof) {
                for (j = 0; j < ctx->nb_outputs; j++)
                    if (!cat->in[cat->cur_idx + j].eof)
                        FUNC4(ctx->inputs[cat->cur_idx + j]);
                return 0;
            } else {
                FUNC4(ctx->inputs[cat->cur_idx + i]);
                ret = 0;
            }
        }
    }

    return ret;
}