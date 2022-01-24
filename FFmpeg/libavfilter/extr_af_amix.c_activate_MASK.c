#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_7__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_24__ {scalar_t__ nb_frames; } ;
struct TYPE_23__ {TYPE_3__** inputs; TYPE_1__* priv; TYPE_3__** outputs; } ;
struct TYPE_22__ {int /*<<< orphan*/  time_base; } ;
struct TYPE_21__ {int /*<<< orphan*/  nb_samples; scalar_t__ extended_data; int /*<<< orphan*/  pts; } ;
struct TYPE_20__ {int nb_inputs; int* input_state; TYPE_7__* frame_list; int /*<<< orphan*/  next_pts; int /*<<< orphan*/ * fifos; } ;
typedef  TYPE_1__ MixContext ;
typedef  TYPE_2__ AVFrame ;
typedef  TYPE_3__ AVFilterLink ;
typedef  TYPE_4__ AVFilterContext ;

/* Variables and functions */
 int AVERROR_EOF ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,TYPE_4__*) ; 
 int INPUT_EOF ; 
 int INPUT_ON ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,void**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (TYPE_3__*,int*,int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_3__*,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 scalar_t__ FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int FUNC12 (TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (TYPE_7__*) ; 
 int FUNC14 (TYPE_3__*) ; 
 int FUNC15 (TYPE_4__*,int) ; 

__attribute__((used)) static int FUNC16(AVFilterContext *ctx)
{
    AVFilterLink *outlink = ctx->outputs[0];
    MixContext *s = ctx->priv;
    AVFrame *buf = NULL;
    int i, ret;

    FUNC0(outlink, ctx);

    for (i = 0; i < s->nb_inputs; i++) {
        AVFilterLink *inlink = ctx->inputs[i];

        if ((ret = FUNC8(ctx->inputs[i], &buf)) > 0) {
            if (i == 0) {
                int64_t pts = FUNC5(buf->pts, inlink->time_base,
                                           outlink->time_base);
                ret = FUNC12(s->frame_list, buf->nb_samples, pts);
                if (ret < 0) {
                    FUNC4(&buf);
                    return ret;
                }
            }

            ret = FUNC3(s->fifos[i], (void **)buf->extended_data,
                                      buf->nb_samples);
            if (ret < 0) {
                FUNC4(&buf);
                return ret;
            }

            FUNC4(&buf);

            ret = FUNC14(outlink);
            if (ret < 0)
                return ret;
        }
    }

    for (i = 0; i < s->nb_inputs; i++) {
        int64_t pts;
        int status;

        if (FUNC7(ctx->inputs[i], &status, &pts)) {
            if (status == AVERROR_EOF) {
                if (i == 0) {
                    s->input_state[i] = 0;
                    if (s->nb_inputs == 1) {
                        FUNC11(outlink, status, pts);
                        return 0;
                    }
                } else {
                    s->input_state[i] |= INPUT_EOF;
                    if (FUNC2(s->fifos[i]) == 0) {
                        s->input_state[i] = 0;
                    }
                }
            }
        }
    }

    if (FUNC6(s)) {
        FUNC11(outlink, AVERROR_EOF, s->next_pts);
        return 0;
    }

    if (FUNC10(outlink)) {
        int wanted_samples;

        if (!(s->input_state[0] & INPUT_ON))
            return FUNC15(ctx, 1);

        if (s->frame_list->nb_frames == 0) {
            FUNC9(ctx->inputs[0]);
            return 0;
        }
        FUNC1(s->frame_list->nb_frames > 0);

        wanted_samples = FUNC13(s->frame_list);

        return FUNC15(ctx, wanted_samples);
    }

    return 0;
}