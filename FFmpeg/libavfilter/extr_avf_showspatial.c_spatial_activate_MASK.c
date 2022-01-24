#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {TYPE_1__* internal; TYPE_2__* priv; int /*<<< orphan*/ ** outputs; int /*<<< orphan*/ ** inputs; } ;
struct TYPE_15__ {scalar_t__ nb_samples; scalar_t__ extended_data; scalar_t__ pts; } ;
struct TYPE_14__ {scalar_t__ win_size; int /*<<< orphan*/  fifo; scalar_t__ hop_size; scalar_t__ consumed; scalar_t__ pts; } ;
struct TYPE_13__ {int /*<<< orphan*/  (* execute ) (TYPE_4__*,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *,int) ;} ;
typedef  TYPE_2__ ShowSpatialContext ;
typedef  TYPE_3__ AVFrame ;
typedef  int /*<<< orphan*/  AVFilterLink ;
typedef  TYPE_4__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FFERROR_NOT_READY ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC6 (int /*<<< orphan*/ ,void**,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,void**,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__**) ; 
 int FUNC10 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,int) ; 
 TYPE_3__* FUNC12 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC13 (int /*<<< orphan*/ *,TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  run_channel_fft ; 
 int /*<<< orphan*/  FUNC16 (TYPE_4__*,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC17(AVFilterContext *ctx)
{
    AVFilterLink *inlink = ctx->inputs[0];
    AVFilterLink *outlink = ctx->outputs[0];
    ShowSpatialContext *s = ctx->priv;
    int ret;

    FUNC3(outlink, inlink);

    if (FUNC7(s->fifo) < s->win_size) {
        AVFrame *frame = NULL;

        ret = FUNC13(inlink, &frame);
        if (ret < 0)
            return ret;
        if (ret > 0) {
            s->pts = frame->pts;
            s->consumed = 0;

            FUNC8(s->fifo, (void **)frame->extended_data, frame->nb_samples);
            FUNC9(&frame);
        }
    }

    if (FUNC7(s->fifo) >= s->win_size) {
        AVFrame *fin = FUNC12(inlink, s->win_size);
        if (!fin)
            return FUNC0(ENOMEM);

        fin->pts = s->pts + s->consumed;
        s->consumed += s->hop_size;
        ret = FUNC6(s->fifo, (void **)fin->extended_data,
                                 FUNC1(s->win_size, FUNC7(s->fifo)));
        if (ret < 0) {
            FUNC9(&fin);
            return ret;
        }

        FUNC4(fin->nb_samples == s->win_size);

        ctx->internal->execute(ctx, run_channel_fft, fin, NULL, 2);

        ret = FUNC10(inlink, fin);

        FUNC9(&fin);
        FUNC5(s->fifo, s->hop_size);
        if (ret <= 0)
            return ret;
    }

    FUNC2(inlink, outlink);
    if (FUNC15(outlink) && FUNC7(s->fifo) < s->win_size) {
        FUNC14(inlink);
        return 0;
    }

    if (FUNC7(s->fifo) >= s->win_size) {
        FUNC11(ctx, 10);
        return 0;
    }
    return FFERROR_NOT_READY;
}