#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {int w; int h; TYPE_1__* dst; } ;
struct TYPE_20__ {int /*<<< orphan*/ * linesize; int /*<<< orphan*/ * data; } ;
struct TYPE_18__ {int /*<<< orphan*/  filter_context; int /*<<< orphan*/  threshold; } ;
struct TYPE_17__ {int /*<<< orphan*/  filter_context; int /*<<< orphan*/  threshold; } ;
struct TYPE_19__ {TYPE_3__ chroma; TYPE_2__ luma; int /*<<< orphan*/  vsub; int /*<<< orphan*/  hsub; } ;
struct TYPE_16__ {TYPE_6__** outputs; TYPE_4__* priv; } ;
typedef  TYPE_4__ SmartblurContext ;
typedef  TYPE_5__ AVFrame ;
typedef  TYPE_6__ AVFilterLink ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_6__*,TYPE_5__*) ; 
 TYPE_5__* FUNC6 (TYPE_6__*,int,int) ; 

__attribute__((used)) static int FUNC7(AVFilterLink *inlink, AVFrame *inpic)
{
    SmartblurContext  *s  = inlink->dst->priv;
    AVFilterLink *outlink     = inlink->dst->outputs[0];
    AVFrame *outpic;
    int cw = FUNC1(inlink->w, s->hsub);
    int ch = FUNC1(inlink->h, s->vsub);

    outpic = FUNC6(outlink, outlink->w, outlink->h);
    if (!outpic) {
        FUNC3(&inpic);
        return FUNC0(ENOMEM);
    }
    FUNC2(outpic, inpic);

    FUNC4(outpic->data[0], outpic->linesize[0],
         inpic->data[0],  inpic->linesize[0],
         inlink->w, inlink->h, s->luma.threshold,
         s->luma.filter_context);

    if (inpic->data[2]) {
        FUNC4(outpic->data[1], outpic->linesize[1],
             inpic->data[1],  inpic->linesize[1],
             cw, ch, s->chroma.threshold,
             s->chroma.filter_context);
        FUNC4(outpic->data[2], outpic->linesize[2],
             inpic->data[2],  inpic->linesize[2],
             cw, ch, s->chroma.threshold,
             s->chroma.filter_context);
    }

    FUNC3(&inpic);
    return FUNC5(outlink, outpic);
}