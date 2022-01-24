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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  enum PhaseMode { ____Placeholder_PhaseMode } PhaseMode ;
struct TYPE_22__ {scalar_t__ is_disabled; TYPE_1__* priv; TYPE_3__** outputs; } ;
struct TYPE_21__ {int /*<<< orphan*/  h; int /*<<< orphan*/  w; TYPE_4__* dst; } ;
struct TYPE_20__ {int /*<<< orphan*/ * linesize; int /*<<< orphan*/ ** data; } ;
struct TYPE_19__ {int nb_planes; int* planeheight; TYPE_2__* frame; int /*<<< orphan*/ * linesize; int /*<<< orphan*/  mode; } ;
typedef  TYPE_1__ PhaseContext ;
typedef  TYPE_2__ AVFrame ;
typedef  TYPE_3__ AVFilterLink ;
typedef  TYPE_4__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int BOTTOM_FIRST ; 
 int /*<<< orphan*/  ENOMEM ; 
 int PROGRESSIVE ; 
 int TOP_FIRST ; 
 int FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,TYPE_2__*,TYPE_2__*) ; 
 TYPE_2__* FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__**) ; 
 int FUNC5 (TYPE_3__*,TYPE_2__*) ; 
 TYPE_2__* FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(AVFilterLink *inlink, AVFrame *in)
{
    AVFilterContext *ctx = inlink->dst;
    AVFilterLink *outlink = ctx->outputs[0];
    PhaseContext *s = ctx->priv;
    enum PhaseMode mode;
    int plane, top, y;
    AVFrame *out;

    if (ctx->is_disabled) {
        FUNC4(&s->frame);
        /* we keep a reference to the previous frame so the filter can start
         * being useful as soon as it's not disabled, avoiding the 1-frame
         * delay. */
        s->frame = FUNC2(in);
        return FUNC5(outlink, in);
    }

    out = FUNC6(outlink, outlink->w, outlink->h);
    if (!out) {
        FUNC4(&in);
        return FUNC0(ENOMEM);
    }
    FUNC3(out, in);

    if (!s->frame) {
        s->frame = in;
        mode = PROGRESSIVE;
    } else {
        mode = FUNC1(ctx, s->mode, s->frame, in);
    }

    for (plane = 0; plane < s->nb_planes; plane++) {
        const uint8_t *buf = s->frame->data[plane];
        const uint8_t *from = in->data[plane];
        uint8_t *to = out->data[plane];

        for (y = 0, top = 1; y < s->planeheight[plane]; y++, top ^= 1) {
            FUNC7(to, mode == (top ? BOTTOM_FIRST : TOP_FIRST) ? buf : from, s->linesize[plane]);

            buf += s->frame->linesize[plane];
            from += in->linesize[plane];
            to += out->linesize[plane];
        }
    }

    if (in != s->frame)
        FUNC4(&s->frame);
    s->frame = in;
    return FUNC5(outlink, out);
}