#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/ ** inputs; int /*<<< orphan*/ ** outputs; TYPE_2__* priv; } ;
struct TYPE_9__ {int eof_hrirs; int nb_inputs; int /*<<< orphan*/  size; int /*<<< orphan*/  have_hrirs; TYPE_1__* in; } ;
struct TYPE_8__ {int eof; } ;
typedef  TYPE_2__ HeadphoneContext ;
typedef  int /*<<< orphan*/  AVFrame ;
typedef  int /*<<< orphan*/  AVFilterLink ;
typedef  TYPE_3__ AVFilterContext ;

/* Variables and functions */
 scalar_t__ AVERROR_EOF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(AVFilterContext *ctx)
{
    HeadphoneContext *s = ctx->priv;
    AVFilterLink *inlink = ctx->inputs[0];
    AVFilterLink *outlink = ctx->outputs[0];
    AVFrame *in = NULL;
    int i, ret;

    FUNC1(ctx->outputs[0], ctx);
    if (!s->eof_hrirs) {
        for (i = 1; i < s->nb_inputs; i++) {
            if (s->in[i].eof)
                continue;

            if ((ret = FUNC2(ctx->inputs[i], i)) < 0)
                return ret;

            if (!s->in[i].eof) {
                if (FUNC7(ctx->inputs[i]) == AVERROR_EOF)
                    s->in[i].eof = 1;
            }
        }

        for (i = 1; i < s->nb_inputs; i++) {
            if (!s->in[i].eof)
                break;
        }

        if (i != s->nb_inputs) {
            if (FUNC6(ctx->outputs[0])) {
                for (i = 1; i < s->nb_inputs; i++) {
                    if (!s->in[i].eof)
                        FUNC5(ctx->inputs[i]);
                }
            }

            return 0;
        } else {
            s->eof_hrirs = 1;
        }
    }

    if (!s->have_hrirs && s->eof_hrirs) {
        ret = FUNC3(ctx, inlink);
        if (ret < 0)
            return ret;
    }

    if ((ret = FUNC4(ctx->inputs[0], s->size, s->size, &in)) > 0) {
        ret = FUNC8(s, in, outlink);
        if (ret < 0)
            return ret;
    }

    if (ret < 0)
        return ret;

    FUNC0(ctx->inputs[0], ctx->outputs[0]);
    if (FUNC6(ctx->outputs[0]))
        FUNC5(ctx->inputs[0]);

    return 0;
}