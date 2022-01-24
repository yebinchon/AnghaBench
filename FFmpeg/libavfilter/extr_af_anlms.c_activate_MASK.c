#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_9__ ;
typedef  struct TYPE_23__   TYPE_7__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_24__ {int /*<<< orphan*/  pts; int /*<<< orphan*/  nb_samples; } ;
struct TYPE_23__ {scalar_t__ channels; } ;
struct TYPE_22__ {int nb_inputs; int /*<<< orphan*/ * inputs; TYPE_7__** outputs; TYPE_1__* internal; TYPE_2__* priv; } ;
struct TYPE_21__ {int /*<<< orphan*/  pts; } ;
struct TYPE_20__ {TYPE_9__** frame; } ;
struct TYPE_19__ {int /*<<< orphan*/  (* execute ) (TYPE_4__*,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *,int) ;} ;
typedef  TYPE_2__ AudioNLMSContext ;
typedef  TYPE_3__ AVFrame ;
typedef  TYPE_4__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_7__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_9__**) ; 
 int FUNC4 (TYPE_7__*,TYPE_3__*) ; 
 scalar_t__ FUNC5 (TYPE_4__*) ; 
 TYPE_3__* FUNC6 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int,int,TYPE_9__**) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_7__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  process_channels ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC15(AVFilterContext *ctx)
{
    AudioNLMSContext *s = ctx->priv;
    int i, ret, status;
    int nb_samples;
    int64_t pts;

    FUNC2(ctx->outputs[0], ctx);

    nb_samples = FUNC1(FUNC10(ctx->inputs[0]),
                       FUNC10(ctx->inputs[1]));
    for (i = 0; i < ctx->nb_inputs && nb_samples > 0; i++) {
        if (s->frame[i])
            continue;

        if (FUNC8(ctx->inputs[i], nb_samples) > 0) {
            ret = FUNC9(ctx->inputs[i], nb_samples, nb_samples, &s->frame[i]);
            if (ret < 0)
                return ret;
        }
    }

    if (s->frame[0] && s->frame[1]) {
        AVFrame *out;

        out = FUNC6(ctx->outputs[0], s->frame[0]->nb_samples);
        if (!out) {
            FUNC3(&s->frame[0]);
            FUNC3(&s->frame[1]);
            return FUNC0(ENOMEM);
        }

        ctx->internal->execute(ctx, process_channels, out, NULL, FUNC1(ctx->outputs[0]->channels,
                                                                       FUNC5(ctx)));

        out->pts = s->frame[0]->pts;

        FUNC3(&s->frame[0]);
        FUNC3(&s->frame[1]);

        ret = FUNC4(ctx->outputs[0], out);
        if (ret < 0)
            return ret;
    }

    if (!nb_samples) {
        for (i = 0; i < 2; i++) {
            if (FUNC7(ctx->inputs[i], &status, &pts)) {
                FUNC13(ctx->outputs[0], status, pts);
                return 0;
            }
        }
    }

    if (FUNC12(ctx->outputs[0])) {
        for (i = 0; i < 2; i++) {
            if (FUNC10(ctx->inputs[i]) > 0)
                continue;
            FUNC11(ctx->inputs[i]);
            return 0;
        }
    }
    return 0;
}