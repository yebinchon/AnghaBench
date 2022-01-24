#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_6__ {TYPE_1__* priv; int /*<<< orphan*/ ** outputs; int /*<<< orphan*/ ** inputs; } ;
struct TYPE_5__ {int eof; scalar_t__ frame_len; scalar_t__ delay; int /*<<< orphan*/  pts; } ;
typedef  TYPE_1__ DynamicAudioNormalizerContext ;
typedef  int /*<<< orphan*/  AVFrame ;
typedef  int /*<<< orphan*/  AVFilterLink ;
typedef  TYPE_2__ AVFilterContext ;

/* Variables and functions */
 int AVERROR_EOF ; 
 int FFERROR_NOT_READY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(AVFilterContext *ctx)
{
    AVFilterLink *inlink = ctx->inputs[0];
    AVFilterLink *outlink = ctx->outputs[0];
    DynamicAudioNormalizerContext *s = ctx->priv;
    AVFrame *in = NULL;
    int ret = 0, status;
    int64_t pts;

    FUNC0(outlink, inlink);

    if (!s->eof) {
        ret = FUNC4(inlink, s->frame_len, s->frame_len, &in);
        if (ret < 0)
            return ret;
        if (ret > 0) {
            ret = FUNC7(inlink, in);
            if (ret <= 0)
                return ret;
        }

        if (FUNC5(inlink) >= s->frame_len) {
            FUNC2(ctx, 10);
            return 0;
        }
    }

    if (!s->eof && FUNC3(inlink, &status, &pts)) {
        if (status == AVERROR_EOF)
            s->eof = 1;
    }

    if (s->eof && s->delay > 0)
        return FUNC8(outlink);

    if (s->eof && s->delay <= 0) {
        FUNC6(outlink, AVERROR_EOF, s->pts);
        return 0;
    }

    if (!s->eof)
        FUNC1(outlink, inlink);

    return FFERROR_NOT_READY;
}