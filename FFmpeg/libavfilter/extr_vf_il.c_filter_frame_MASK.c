#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  h; int /*<<< orphan*/  w; TYPE_1__* dst; } ;
struct TYPE_16__ {int /*<<< orphan*/ * linesize; int /*<<< orphan*/ * data; } ;
struct TYPE_15__ {int nb_planes; int has_alpha; int /*<<< orphan*/  alpha_swap; int /*<<< orphan*/  alpha_mode; int /*<<< orphan*/ * linesize; int /*<<< orphan*/  chroma_swap; int /*<<< orphan*/  chroma_mode; int /*<<< orphan*/  chroma_height; int /*<<< orphan*/  luma_swap; int /*<<< orphan*/  luma_mode; } ;
struct TYPE_14__ {TYPE_4__** outputs; TYPE_2__* priv; } ;
typedef  TYPE_2__ IlContext ;
typedef  TYPE_3__ AVFrame ;
typedef  TYPE_4__ AVFilterLink ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__**) ; 
 int FUNC3 (TYPE_4__*,TYPE_3__*) ; 
 TYPE_3__* FUNC4 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(AVFilterLink *inlink, AVFrame *inpicref)
{
    IlContext *s = inlink->dst->priv;
    AVFilterLink *outlink = inlink->dst->outputs[0];
    AVFrame *out;
    int comp;

    out = FUNC4(outlink, outlink->w, outlink->h);
    if (!out) {
        FUNC2(&inpicref);
        return FUNC0(ENOMEM);
    }
    FUNC1(out, inpicref);

    FUNC5(out->data[0], inpicref->data[0],
               s->linesize[0], inlink->h,
               out->linesize[0], inpicref->linesize[0],
               s->luma_mode, s->luma_swap);

    for (comp = 1; comp < (s->nb_planes - s->has_alpha); comp++) {
        FUNC5(out->data[comp], inpicref->data[comp],
                   s->linesize[comp], s->chroma_height,
                   out->linesize[comp], inpicref->linesize[comp],
                   s->chroma_mode, s->chroma_swap);
    }

    if (s->has_alpha) {
        comp = s->nb_planes - 1;
        FUNC5(out->data[comp], inpicref->data[comp],
                   s->linesize[comp], inlink->h,
                   out->linesize[comp], inpicref->linesize[comp],
                   s->alpha_mode, s->alpha_swap);
    }

    FUNC2(&inpicref);
    return FUNC3(outlink, out);
}