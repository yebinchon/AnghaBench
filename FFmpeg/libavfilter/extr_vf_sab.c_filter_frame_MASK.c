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
struct TYPE_17__ {int w; int h; TYPE_1__* dst; } ;
struct TYPE_16__ {int /*<<< orphan*/ * linesize; int /*<<< orphan*/ * data; } ;
struct TYPE_15__ {int /*<<< orphan*/  chroma; int /*<<< orphan*/  vsub; int /*<<< orphan*/  hsub; int /*<<< orphan*/  luma; } ;
struct TYPE_14__ {TYPE_4__** outputs; TYPE_2__* priv; } ;
typedef  TYPE_2__ SabContext ;
typedef  TYPE_3__ AVFrame ;
typedef  TYPE_4__ AVFilterLink ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_4__*,TYPE_3__*) ; 
 TYPE_3__* FUNC6 (TYPE_4__*,int,int) ; 

__attribute__((used)) static int FUNC7(AVFilterLink *inlink, AVFrame *inpic)
{
    SabContext  *s = inlink->dst->priv;
    AVFilterLink *outlink = inlink->dst->outputs[0];
    AVFrame *outpic;

    outpic = FUNC6(outlink, outlink->w, outlink->h);
    if (!outpic) {
        FUNC3(&inpic);
        return FUNC0(ENOMEM);
    }
    FUNC2(outpic, inpic);

    FUNC4(outpic->data[0], outpic->linesize[0], inpic->data[0],  inpic->linesize[0],
         inlink->w, inlink->h, &s->luma);
    if (inpic->data[2]) {
        int cw = FUNC1(inlink->w, s->hsub);
        int ch = FUNC1(inlink->h, s->vsub);
        FUNC4(outpic->data[1], outpic->linesize[1], inpic->data[1], inpic->linesize[1], cw, ch, &s->chroma);
        FUNC4(outpic->data[2], outpic->linesize[2], inpic->data[2], inpic->linesize[2], cw, ch, &s->chroma);
    }

    FUNC3(&inpic);
    return FUNC5(outlink, outpic);
}