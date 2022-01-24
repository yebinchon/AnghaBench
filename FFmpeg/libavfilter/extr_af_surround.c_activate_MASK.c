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
struct TYPE_8__ {int eof; scalar_t__ buf_size; scalar_t__ pts; int /*<<< orphan*/  fifo; } ;
typedef  TYPE_1__ AudioSurroundContext ;
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
 int FUNC7 (int /*<<< orphan*/ *,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,scalar_t__) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(AVFilterContext *ctx)
{
    AVFilterLink *inlink = ctx->inputs[0];
    AVFilterLink *outlink = ctx->outputs[0];
    AudioSurroundContext *s = ctx->priv;
    AVFrame *in = NULL;
    int ret = 0, status;
    int64_t pts;

    FUNC0(outlink, inlink);

    if (!s->eof && FUNC2(s->fifo) < s->buf_size) {
        ret = FUNC7(inlink, &in);
        if (ret < 0)
            return ret;

        if (ret > 0) {
            ret = FUNC3(s->fifo, (void **)in->extended_data,
                                      in->nb_samples);
            if (ret >= 0 && s->pts == AV_NOPTS_VALUE)
                s->pts = in->pts;

            FUNC4(&in);
            if (ret < 0)
                return ret;
        }
    }

    if ((FUNC2(s->fifo) >= s->buf_size) ||
        (FUNC2(s->fifo) > 0 && s->eof)) {
        ret = FUNC9(inlink);
        if (FUNC2(s->fifo) >= s->buf_size)
            FUNC5(ctx, 100);
        return ret;
    }

    if (!s->eof && FUNC6(inlink, &status, &pts)) {
        if (status == AVERROR_EOF) {
            s->eof = 1;
            if (FUNC2(s->fifo) >= 0) {
                FUNC5(ctx, 100);
                return 0;
            }
        }
    }

    if (s->eof && FUNC2(s->fifo) <= 0) {
        FUNC8(outlink, AVERROR_EOF, s->pts);
        return 0;
    }

    if (!s->eof)
        FUNC1(outlink, inlink);

    return FFERROR_NOT_READY;
}