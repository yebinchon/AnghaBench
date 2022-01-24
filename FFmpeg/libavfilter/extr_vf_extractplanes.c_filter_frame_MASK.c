#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int nb_outputs; TYPE_3__** outputs; TYPE_1__* priv; } ;
struct TYPE_17__ {int /*<<< orphan*/  h; int /*<<< orphan*/  w; TYPE_4__* dst; } ;
struct TYPE_16__ {int /*<<< orphan*/ * linesize; int /*<<< orphan*/ * data; } ;
struct TYPE_15__ {int* map; int /*<<< orphan*/ * linesize; int /*<<< orphan*/  step; int /*<<< orphan*/  depth; scalar_t__ is_packed; } ;
typedef  TYPE_1__ ExtractPlanesContext ;
typedef  TYPE_2__ AVFrame ;
typedef  TYPE_3__ AVFilterLink ;
typedef  TYPE_4__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const) ; 
 int FUNC5 (TYPE_3__*,TYPE_2__*) ; 
 TYPE_2__* FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC8(AVFilterLink *inlink, AVFrame *frame)
{
    AVFilterContext *ctx = inlink->dst;
    ExtractPlanesContext *s = ctx->priv;
    int i, eof = 0, ret = 0;

    for (i = 0; i < ctx->nb_outputs; i++) {
        AVFilterLink *outlink = ctx->outputs[i];
        const int idx = s->map[i];
        AVFrame *out;

        if (FUNC7(outlink))
            continue;

        out = FUNC6(outlink, outlink->w, outlink->h);
        if (!out) {
            ret = FUNC0(ENOMEM);
            break;
        }
        FUNC1(out, frame);

        if (s->is_packed) {
            FUNC4(out->data[0], out->linesize[0],
                                frame->data[0], frame->linesize[0],
                                outlink->w, outlink->h,
                                s->depth,
                                s->step, idx);
        } else {
            FUNC3(out->data[0], out->linesize[0],
                                frame->data[idx], frame->linesize[idx],
                                s->linesize[idx], outlink->h);
        }

        ret = FUNC5(outlink, out);
        if (ret == AVERROR_EOF)
            eof++;
        else if (ret < 0)
            break;
    }
    FUNC2(&frame);

    if (eof == ctx->nb_outputs)
        ret = AVERROR_EOF;
    else if (ret == AVERROR_EOF)
        ret = 0;
    return ret;
}