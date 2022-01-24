#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;
typedef  struct TYPE_21__   TYPE_10__ ;

/* Type definitions */
struct TYPE_22__ {TYPE_10__* out; TYPE_2__* cur; TYPE_2__* prev; TYPE_2__* next; scalar_t__ deint; int /*<<< orphan*/  current_field; scalar_t__ frame_pending; } ;
typedef  TYPE_1__ YADIFContext ;
struct TYPE_25__ {int /*<<< orphan*/ * outputs; scalar_t__ is_disabled; TYPE_1__* priv; } ;
struct TYPE_24__ {int /*<<< orphan*/  h; int /*<<< orphan*/  w; TYPE_4__* dst; } ;
struct TYPE_23__ {scalar_t__ repeat_pict; int /*<<< orphan*/  interlaced_frame; } ;
struct TYPE_21__ {int pts; scalar_t__ interlaced_frame; } ;
typedef  TYPE_2__ AVFrame ;
typedef  TYPE_3__ AVFilterLink ;
typedef  TYPE_4__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_VERBOSE ; 
 int AV_NOPTS_VALUE ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  YADIF_FIELD_END ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 void* FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_10__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC6 (TYPE_1__*,TYPE_2__*,TYPE_2__*) ; 
 int FUNC7 (int /*<<< orphan*/ ,TYPE_10__*) ; 
 TYPE_10__* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,TYPE_2__*) ; 
 int FUNC10 (TYPE_4__*,int) ; 

int FUNC11(AVFilterLink *link, AVFrame *frame)
{
    AVFilterContext *ctx = link->dst;
    YADIFContext *yadif = ctx->priv;

    FUNC1(frame);

    if (yadif->frame_pending)
        FUNC10(ctx, 1);

    if (yadif->prev)
        FUNC4(&yadif->prev);
    yadif->prev = yadif->cur;
    yadif->cur  = yadif->next;
    yadif->next = frame;

    if (!yadif->cur) {
        yadif->cur = FUNC2(yadif->next);
        if (!yadif->cur)
            return FUNC0(ENOMEM);
        yadif->current_field = YADIF_FIELD_END;
    }

    if (FUNC6(yadif, yadif->next, yadif->cur)) {
        FUNC5(ctx, AV_LOG_VERBOSE, "Reallocating frame due to differing stride\n");
        FUNC9(link, yadif->next);
    }
    if (FUNC6(yadif, yadif->next, yadif->cur))
        FUNC9(link, yadif->cur);
    if (yadif->prev && FUNC6(yadif, yadif->next, yadif->prev))
        FUNC9(link, yadif->prev);
    if (FUNC6(yadif, yadif->next, yadif->cur) || (yadif->prev && FUNC6(yadif, yadif->next, yadif->prev))) {
        FUNC5(ctx, AV_LOG_ERROR, "Failed to reallocate frame\n");
        return -1;
    }

    if (!yadif->prev)
        return 0;

    if ((yadif->deint && !yadif->cur->interlaced_frame) ||
        ctx->is_disabled ||
        (yadif->deint && !yadif->prev->interlaced_frame && yadif->prev->repeat_pict) ||
        (yadif->deint && !yadif->next->interlaced_frame && yadif->next->repeat_pict)
    ) {
        yadif->out  = FUNC2(yadif->cur);
        if (!yadif->out)
            return FUNC0(ENOMEM);

        FUNC4(&yadif->prev);
        if (yadif->out->pts != AV_NOPTS_VALUE)
            yadif->out->pts *= 2;
        return FUNC7(ctx->outputs[0], yadif->out);
    }

    yadif->out = FUNC8(ctx->outputs[0], link->w, link->h);
    if (!yadif->out)
        return FUNC0(ENOMEM);

    FUNC3(yadif->out, yadif->cur);
    yadif->out->interlaced_frame = 0;

    if (yadif->out->pts != AV_NOPTS_VALUE)
        yadif->out->pts *= 2;

    return FUNC10(ctx, 0);
}