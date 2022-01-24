#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_7__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;
typedef  struct TYPE_21__   TYPE_17__ ;

/* Type definitions */
typedef  scalar_t__ int64_t ;
struct TYPE_25__ {int /*<<< orphan*/  time_base; } ;
struct TYPE_24__ {TYPE_7__** inputs; TYPE_2__** outputs; TYPE_1__* priv; } ;
struct TYPE_23__ {int /*<<< orphan*/  time_base; } ;
struct TYPE_22__ {int eof_coeffs; int min_part_size; scalar_t__ response; TYPE_17__* video; int /*<<< orphan*/  pts; scalar_t__ have_coeffs; } ;
struct TYPE_21__ {scalar_t__ pts; } ;
typedef  TYPE_1__ AudioFIRContext ;
typedef  int /*<<< orphan*/  AVFrame ;
typedef  TYPE_2__ AVFilterLink ;
typedef  TYPE_3__ AVFilterContext ;

/* Variables and functions */
 int AVERROR_EOF ; 
 int FFERROR_NOT_READY ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_17__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_7__*,int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_3__*) ; 
 int FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int) ; 
 scalar_t__ FUNC8 (TYPE_7__*,int*,scalar_t__*) ; 
 int FUNC9 (TYPE_7__*,int,int,int /*<<< orphan*/ **) ; 
 int FUNC10 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_7__*) ; 
 scalar_t__ FUNC12 (TYPE_2__*) ; 
 int FUNC13 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,int,scalar_t__) ; 
 int FUNC15 (TYPE_1__*,int /*<<< orphan*/ *,TYPE_2__*) ; 

__attribute__((used)) static int FUNC16(AVFilterContext *ctx)
{
    AudioFIRContext *s = ctx->priv;
    AVFilterLink *outlink = ctx->outputs[0];
    int ret, status, available, wanted;
    AVFrame *in = NULL;
    int64_t pts;

    FUNC1(ctx->outputs[0], ctx);
    if (s->response)
        FUNC1(ctx->outputs[1], ctx);
    if (!s->eof_coeffs) {
        AVFrame *ir = NULL;

        ret = FUNC4(ctx->inputs[1], ir);
        if (ret < 0)
            return ret;

        if (FUNC13(ctx->inputs[1]) == AVERROR_EOF)
            s->eof_coeffs = 1;

        if (!s->eof_coeffs) {
            if (FUNC12(ctx->outputs[0]))
                FUNC11(ctx->inputs[1]);
            else if (s->response && FUNC12(ctx->outputs[1]))
                FUNC11(ctx->inputs[1]);
            return 0;
        }
    }

    if (!s->have_coeffs && s->eof_coeffs) {
        ret = FUNC5(ctx);
        if (ret < 0)
            return ret;
    }

    available = FUNC10(ctx->inputs[0]);
    wanted = FUNC0(s->min_part_size, (available / s->min_part_size) * s->min_part_size);
    ret = FUNC9(ctx->inputs[0], wanted, wanted, &in);
    if (ret > 0)
        ret = FUNC15(s, in, outlink);

    if (ret < 0)
        return ret;

    if (s->response && s->have_coeffs) {
        int64_t old_pts = s->video->pts;
        int64_t new_pts = FUNC3(s->pts, ctx->inputs[0]->time_base, ctx->outputs[1]->time_base);

        if (FUNC12(ctx->outputs[1]) && old_pts < new_pts) {
            s->video->pts = new_pts;
            return FUNC6(ctx->outputs[1], FUNC2(s->video));
        }
    }

    if (FUNC10(ctx->inputs[0]) >= s->min_part_size) {
        FUNC7(ctx, 10);
        return 0;
    }

    if (FUNC8(ctx->inputs[0], &status, &pts)) {
        if (status == AVERROR_EOF) {
            FUNC14(ctx->outputs[0], status, pts);
            if (s->response)
                FUNC14(ctx->outputs[1], status, pts);
            return 0;
        }
    }

    if (FUNC12(ctx->outputs[0]) &&
        !FUNC13(ctx->inputs[0])) {
        FUNC11(ctx->inputs[0]);
        return 0;
    }

    if (s->response &&
        FUNC12(ctx->outputs[1]) &&
        !FUNC13(ctx->inputs[0])) {
        FUNC11(ctx->inputs[0]);
        return 0;
    }

    return FFERROR_NOT_READY;
}