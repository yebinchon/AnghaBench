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
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_10__ {TYPE_1__* priv; int /*<<< orphan*/ ** outputs; int /*<<< orphan*/ ** inputs; } ;
struct TYPE_9__ {scalar_t__ pts; int /*<<< orphan*/  nb_samples; scalar_t__ extended_data; } ;
struct TYPE_8__ {scalar_t__ window_size; scalar_t__ pts; scalar_t__ samples_left; int eof; scalar_t__ overlap_skip; int /*<<< orphan*/  fifo; } ;
typedef  TYPE_1__ AudioDeclickContext ;
typedef  TYPE_2__ AVFrame ;
typedef  int /*<<< orphan*/  AVFilterLink ;
typedef  TYPE_3__ AVFilterContext ;

/* Variables and functions */
 int AVERROR_EOF ; 
 scalar_t__ AV_NOPTS_VALUE ; 
 int FFERROR_NOT_READY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,void**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,scalar_t__) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(AVFilterContext *ctx)
{
    AVFilterLink *inlink = ctx->inputs[0];
    AVFilterLink *outlink = ctx->outputs[0];
    AudioDeclickContext *s = ctx->priv;
    AVFrame *in;
    int ret, status;
    int64_t pts;

    FUNC0(outlink, inlink);

    ret = FUNC7(inlink, s->window_size, s->window_size, &in);
    if (ret < 0)
        return ret;
    if (ret > 0) {
        if (s->pts == AV_NOPTS_VALUE)
            s->pts = in->pts;

        ret = FUNC3(s->fifo, (void **)in->extended_data,
                                  in->nb_samples);
        FUNC4(&in);
        if (ret < 0)
            return ret;
    }

    if (FUNC2(s->fifo) >= s->window_size ||
        s->samples_left > 0)
        return FUNC9(inlink);

    if (FUNC2(s->fifo) >= s->window_size) {
        FUNC5(ctx, 100);
        return 0;
    }

    if (!s->eof && FUNC6(inlink, &status, &pts)) {
        if (status == AVERROR_EOF) {
            s->eof = 1;
            s->samples_left = FUNC2(s->fifo) - s->overlap_skip;
            FUNC5(ctx, 100);
            return 0;
        }
    }

    if (s->eof && s->samples_left <= 0) {
        FUNC8(outlink, AVERROR_EOF, s->pts);
        return 0;
    }

    if (!s->eof)
        FUNC1(outlink, inlink);

    return FFERROR_NOT_READY;
}