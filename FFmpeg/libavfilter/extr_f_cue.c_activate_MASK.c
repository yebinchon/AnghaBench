#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int64_t ;
struct TYPE_22__ {TYPE_1__* priv; TYPE_3__** outputs; TYPE_3__** inputs; } ;
struct TYPE_21__ {int /*<<< orphan*/  time_base; } ;
struct TYPE_20__ {int /*<<< orphan*/  pts; } ;
struct TYPE_19__ {int status; scalar_t__ first_pts; scalar_t__ preroll; scalar_t__ buffer; scalar_t__ cue; } ;
typedef  TYPE_1__ CueContext ;
typedef  TYPE_2__ AVFrame ;
typedef  TYPE_3__ AVFilterLink ;
typedef  TYPE_4__ AVFilterContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_TIME_BASE_Q ; 
 int FFERROR_NOT_READY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int,int) ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_3__*,TYPE_2__*) ; 
 int FUNC8 (TYPE_3__*,TYPE_2__**) ; 
 TYPE_2__* FUNC9 (TYPE_3__*,scalar_t__) ; 
 scalar_t__ FUNC10 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC11(AVFilterContext *ctx)
{
    AVFilterLink *inlink = ctx->inputs[0];
    AVFilterLink *outlink = ctx->outputs[0];
    CueContext *s = ctx->priv;

    FUNC1(outlink, inlink);

    if (FUNC10(inlink)) {
        AVFrame *frame = FUNC9(inlink, 0);
        int64_t pts = FUNC5(frame->pts, inlink->time_base, AV_TIME_BASE_Q);

        if (!s->status) {
            s->first_pts = pts;
            s->status++;
        }
        if (s->status == 1) {
            if (pts - s->first_pts < s->preroll) {
                int ret = FUNC8(inlink, &frame);
                if (ret < 0)
                    return ret;
                return FUNC7(outlink, frame);
            }
            s->first_pts = pts;
            s->status++;
        }
        if (s->status == 2) {
            frame = FUNC9(inlink, FUNC10(inlink) - 1);
            pts = FUNC5(frame->pts, inlink->time_base, AV_TIME_BASE_Q);
            if (!(pts - s->first_pts < s->buffer && (FUNC4() - s->cue) < 0))
                s->status++;
        }
        if (s->status == 3) {
            int64_t diff;
            while ((diff = (FUNC4() - s->cue)) < 0)
                FUNC6(FUNC3(-diff / 2, 100, 1000000));
            s->status++;
        }
        if (s->status == 4) {
            int ret = FUNC8(inlink, &frame);
            if (ret < 0)
                return ret;
            return FUNC7(outlink, frame);
        }
    }

    FUNC0(inlink, outlink);
    FUNC2(outlink, inlink);

    return FFERROR_NOT_READY;
}