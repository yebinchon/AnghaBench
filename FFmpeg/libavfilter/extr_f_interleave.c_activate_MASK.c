#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int64_t ;
struct TYPE_19__ {int /*<<< orphan*/  time_base; } ;
struct TYPE_18__ {int nb_inputs; TYPE_4__** inputs; TYPE_1__* priv; int /*<<< orphan*/ ** outputs; } ;
struct TYPE_17__ {scalar_t__ pts; } ;
struct TYPE_16__ {scalar_t__ pts; } ;
typedef  TYPE_1__ InterleaveContext ;
typedef  TYPE_2__ AVFrame ;
typedef  int /*<<< orphan*/  AVFilterLink ;
typedef  TYPE_3__ AVFilterContext ;

/* Variables and functions */
 int /*<<< orphan*/  AVERROR_EOF ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 scalar_t__ AV_NOPTS_VALUE ; 
 int /*<<< orphan*/  AV_TIME_BASE_Q ; 
 int FFERROR_NOT_READY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 scalar_t__ INT64_MAX ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int FUNC5 (TYPE_4__*,TYPE_2__**) ; 
 TYPE_2__* FUNC6 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC12(AVFilterContext *ctx)
{
    AVFilterLink *outlink = ctx->outputs[0];
    InterleaveContext *s = ctx->priv;
    int64_t q_pts, pts = INT64_MAX;
    int i, nb_eofs = 0, input_idx = -1;

    FUNC0(outlink, ctx);

    for (i = 0; i < ctx->nb_inputs; i++) {
        if (!FUNC10(ctx->inputs[i]) &&
            !FUNC7(ctx->inputs[i]))
            break;
    }

    if (i == ctx->nb_inputs) {
        for (i = 0; i < ctx->nb_inputs; i++) {
            AVFrame *frame;

            if (FUNC10(ctx->inputs[i]))
                continue;

            frame = FUNC6(ctx->inputs[i], 0);
            if (frame->pts == AV_NOPTS_VALUE) {
                int ret;

                FUNC2(ctx, AV_LOG_WARNING,
                       "NOPTS value for input frame cannot be accepted, frame discarded\n");
                ret = FUNC5(ctx->inputs[i], &frame);
                if (ret < 0)
                    return ret;
                FUNC1(&frame);
                return AVERROR_INVALIDDATA;
            }

            q_pts = FUNC3(frame->pts, ctx->inputs[i]->time_base, AV_TIME_BASE_Q);
            if (q_pts < pts) {
                pts = q_pts;
                input_idx = i;
            }
        }

        if (input_idx >= 0) {
            AVFrame *frame;
            int ret;

            ret = FUNC5(ctx->inputs[input_idx], &frame);
            if (ret < 0)
                return ret;

            frame->pts = s->pts = pts;
            return FUNC4(outlink, frame);
        }
    }

    for (i = 0; i < ctx->nb_inputs; i++) {
        if (FUNC7(ctx->inputs[i]))
            continue;
        if (FUNC9(outlink) &&
            !FUNC10(ctx->inputs[i])) {
            FUNC8(ctx->inputs[i]);
            return 0;
        }
        nb_eofs++;
    }

    if (nb_eofs == ctx->nb_inputs) {
        FUNC11(outlink, AVERROR_EOF, s->pts);
        return 0;
    }

    return FFERROR_NOT_READY;
}