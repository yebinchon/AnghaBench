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
struct TYPE_18__ {int w; int h; TYPE_1__* dst; } ;
struct TYPE_17__ {int /*<<< orphan*/ * linesize; int /*<<< orphan*/ * data; } ;
struct TYPE_16__ {int /*<<< orphan*/  half_mask_bbox; int /*<<< orphan*/  half_mask_data; int /*<<< orphan*/  mask; int /*<<< orphan*/  full_mask_bbox; int /*<<< orphan*/  full_mask_data; } ;
struct TYPE_15__ {TYPE_4__** outputs; TYPE_2__* priv; } ;
typedef  TYPE_2__ RemovelogoContext ;
typedef  TYPE_3__ AVFrame ;
typedef  TYPE_4__ AVFilterLink ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__**) ; 
 scalar_t__ FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_4__*,TYPE_3__*) ; 
 TYPE_3__* FUNC6 (TYPE_4__*,int,int) ; 

__attribute__((used)) static int FUNC7(AVFilterLink *inlink, AVFrame *inpicref)
{
    RemovelogoContext *s = inlink->dst->priv;
    AVFilterLink *outlink = inlink->dst->outputs[0];
    AVFrame *outpicref;
    int direct = 0;

    if (FUNC3(inpicref)) {
        direct = 1;
        outpicref = inpicref;
    } else {
        outpicref = FUNC6(outlink, outlink->w, outlink->h);
        if (!outpicref) {
            FUNC2(&inpicref);
            return FUNC0(ENOMEM);
        }
        FUNC1(outpicref, inpicref);
    }

    FUNC4(s->mask,
               inpicref ->data[0], inpicref ->linesize[0],
               outpicref->data[0], outpicref->linesize[0],
               s->full_mask_data, inlink->w,
               inlink->w, inlink->h, direct, &s->full_mask_bbox);
    FUNC4(s->mask,
               inpicref ->data[1], inpicref ->linesize[1],
               outpicref->data[1], outpicref->linesize[1],
               s->half_mask_data, inlink->w/2,
               inlink->w/2, inlink->h/2, direct, &s->half_mask_bbox);
    FUNC4(s->mask,
               inpicref ->data[2], inpicref ->linesize[2],
               outpicref->data[2], outpicref->linesize[2],
               s->half_mask_data, inlink->w/2,
               inlink->w/2, inlink->h/2, direct, &s->half_mask_bbox);

    if (!direct)
        FUNC2(&inpicref);

    return FUNC5(outlink, outpicref);
}