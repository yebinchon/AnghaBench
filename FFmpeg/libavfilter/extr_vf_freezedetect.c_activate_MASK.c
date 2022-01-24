#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_4__ ;
typedef  struct TYPE_28__   TYPE_3__ ;
typedef  struct TYPE_27__   TYPE_2__ ;
typedef  struct TYPE_26__   TYPE_1__ ;
typedef  struct TYPE_25__   TYPE_14__ ;

/* Type definitions */
typedef  scalar_t__ int64_t ;
struct TYPE_29__ {TYPE_1__* priv; TYPE_3__** outputs; TYPE_3__** inputs; } ;
struct TYPE_25__ {scalar_t__ num; } ;
struct TYPE_28__ {int /*<<< orphan*/  time_base; TYPE_14__ frame_rate; } ;
struct TYPE_27__ {scalar_t__ pts; } ;
struct TYPE_26__ {scalar_t__ n; scalar_t__ reference_n; scalar_t__ duration; int frozen; TYPE_2__* reference_frame; } ;
typedef  TYPE_1__ FreezeDetectContext ;
typedef  TYPE_2__ AVFrame ;
typedef  TYPE_3__ AVFilterLink ;
typedef  TYPE_4__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ AV_NOPTS_VALUE ; 
 int /*<<< orphan*/  AV_TIME_BASE_Q ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FFERROR_NOT_READY ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_3__*) ; 
 TYPE_2__* FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_14__) ; 
 scalar_t__ FUNC7 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC9 (TYPE_3__*,TYPE_2__*) ; 
 int FUNC10 (TYPE_3__*,TYPE_2__**) ; 
 int FUNC11 (TYPE_1__*,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,TYPE_2__*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(AVFilterContext *ctx)
{
    int ret;
    AVFilterLink *inlink = ctx->inputs[0];
    AVFilterLink *outlink = ctx->outputs[0];
    FreezeDetectContext *s = ctx->priv;
    AVFrame *frame;

    FUNC2(outlink, inlink);

    ret = FUNC10(inlink, &frame);
    if (ret < 0)
        return ret;

    if (frame) {
        int frozen = 0;
        s->n++;

        if (s->reference_frame) {
            int64_t duration;
            if (s->reference_frame->pts == AV_NOPTS_VALUE || frame->pts == AV_NOPTS_VALUE || frame->pts < s->reference_frame->pts)     // Discontinuity?
                duration = inlink->frame_rate.num > 0 ? FUNC7(s->n - s->reference_n, FUNC6(inlink->frame_rate), AV_TIME_BASE_Q) : 0;
            else
                duration = FUNC7(frame->pts - s->reference_frame->pts, inlink->time_base, AV_TIME_BASE_Q);

            frozen = FUNC11(s, s->reference_frame, frame);
            if (duration >= s->duration) {
                if (!s->frozen)
                    FUNC12(s, frame, "lavfi.freezedetect.freeze_start", FUNC8(s->reference_frame->pts, &inlink->time_base));
                if (!frozen) {
                    FUNC12(s, frame, "lavfi.freezedetect.freeze_duration", FUNC8(duration, &AV_TIME_BASE_Q));
                    FUNC12(s, frame, "lavfi.freezedetect.freeze_end", FUNC8(frame->pts, &inlink->time_base));
                }
                s->frozen = frozen;
            }
        }

        if (!frozen) {
            FUNC5(&s->reference_frame);
            s->reference_frame = FUNC4(frame);
            s->reference_n = s->n;
            if (!s->reference_frame) {
                FUNC5(&frame);
                return FUNC0(ENOMEM);
            }
        }
        return FUNC9(outlink, frame);
    }

    FUNC1(inlink, outlink);
    FUNC3(outlink, inlink);

    return FFERROR_NOT_READY;
}