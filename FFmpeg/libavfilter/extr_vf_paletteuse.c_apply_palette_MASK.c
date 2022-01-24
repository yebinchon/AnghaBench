#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
struct TYPE_26__ {TYPE_3__** outputs; TYPE_1__* priv; } ;
struct TYPE_25__ {int /*<<< orphan*/  frame_count_out; int /*<<< orphan*/  h; int /*<<< orphan*/  w; TYPE_4__* dst; } ;
struct TYPE_24__ {int /*<<< orphan*/ * data; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct TYPE_23__ {int (* set_frame ) (TYPE_1__*,TYPE_2__*,TYPE_2__*,int,int,int,int) ;scalar_t__ calc_mean_err; int /*<<< orphan*/  palette; int /*<<< orphan*/  last_in; int /*<<< orphan*/  last_out; int /*<<< orphan*/  diff_mode; } ;
typedef  TYPE_1__ PaletteUseContext ;
typedef  TYPE_2__ AVFrame ;
typedef  TYPE_3__ AVFilterLink ;
typedef  TYPE_4__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AVPALETTE_SIZE ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__**) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,char*,int,int,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC8 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,TYPE_2__*,int*,int*,int*,int*) ; 
 int FUNC11 (TYPE_1__*,TYPE_2__*,TYPE_2__*,int,int,int,int) ; 

__attribute__((used)) static int FUNC12(AVFilterLink *inlink, AVFrame *in, AVFrame **outf)
{
    int x, y, w, h, ret;
    AVFilterContext *ctx = inlink->dst;
    PaletteUseContext *s = ctx->priv;
    AVFilterLink *outlink = inlink->dst->outputs[0];

    AVFrame *out = FUNC8(outlink, outlink->w, outlink->h);
    if (!out) {
        FUNC2(&in);
        *outf = NULL;
        return FUNC0(ENOMEM);
    }
    FUNC1(out, in);

    FUNC10(s->diff_mode, s->last_in, in,
                          s->last_out, out, &x, &y, &w, &h);
    FUNC5(s->last_in);
    FUNC5(s->last_out);
    if (FUNC4(s->last_in, in) < 0 ||
        FUNC4(s->last_out, out) < 0 ||
        FUNC3(s->last_in) < 0) {
        FUNC2(&in);
        FUNC2(&out);
        *outf = NULL;
        return FUNC0(ENOMEM);
    }

    FUNC7(ctx, "%dx%d rect: (%d;%d) -> (%d,%d) [area:%dx%d]\n",
            w, h, x, y, x+w, y+h, in->width, in->height);

    ret = s->set_frame(s, out, in, x, y, w, h);
    if (ret < 0) {
        FUNC2(&out);
        *outf = NULL;
        return ret;
    }
    FUNC9(out->data[1], s->palette, AVPALETTE_SIZE);
    if (s->calc_mean_err)
        FUNC6(s, in, out, inlink->frame_count_out);
    FUNC2(&in);
    *outf = out;
    return 0;
}