#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_12__ {int /*<<< orphan*/ ** outputs; int /*<<< orphan*/ ** inputs; TYPE_1__* priv; } ;
struct TYPE_11__ {int frames_count; int /*<<< orphan*/  next_pts; scalar_t__ status; } ;
typedef  TYPE_1__ FPSContext ;
typedef  int /*<<< orphan*/  AVFilterLink ;
typedef  TYPE_2__ AVFilterContext ;

/* Variables and functions */
 int FFERROR_NOT_READY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static int FUNC9(AVFilterContext *ctx)
{
    FPSContext   *s       = ctx->priv;
    AVFilterLink *inlink  = ctx->inputs[0];
    AVFilterLink *outlink = ctx->outputs[0];

    int ret;
    int again = 0;
    int64_t status_pts;

    FUNC0(outlink, inlink);

    /* No buffered status: normal operation */
    if (!s->status) {

        /* Read available input frames if we have room */
        while (s->frames_count < 2 && FUNC4(inlink)) {
            ret = FUNC6(ctx, s, inlink, outlink);
            if (ret < 0)
                return ret;
        }

        /* We do not yet have enough frames to produce output */
        if (s->frames_count < 2) {
            /* Check if we've hit EOF (or otherwise that an error status is set) */
            ret = FUNC3(inlink, &s->status, &status_pts);
            if (ret > 0)
                FUNC7(ctx, s, inlink, outlink, status_pts);

            if (!ret) {
                /* If someone wants us to output, we'd better ask for more input */
                FUNC1(outlink, inlink);
                return 0;
            }
        }
    }

    /* Buffered frames are available, so generate an output frame */
    if (s->frames_count > 0) {
        ret = FUNC8(ctx, s, outlink, &again);
        /* Couldn't generate a frame, so schedule us to perform another step */
        if (again)
            FUNC2(ctx, 100);
        return ret;
    }

    /* No frames left, so forward the status */
    if (s->status && s->frames_count == 0) {
        FUNC5(outlink, s->status, s->next_pts);
        return 0;
    }

    return FFERROR_NOT_READY;
}