#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {TYPE_2__** outputs; } ;
struct TYPE_14__ {int /*<<< orphan*/  h; int /*<<< orphan*/  w; TYPE_3__* dst; } ;
struct TYPE_13__ {int /*<<< orphan*/ * linesize; int /*<<< orphan*/ * data; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
typedef  TYPE_1__ AVFrame ;
typedef  TYPE_2__ AVFilterLink ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__**) ; 
 int FUNC3 (TYPE_2__*,TYPE_1__*) ; 
 TYPE_1__* FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(AVFilterLink *inlink, AVFrame *inpicref)
{
    AVFilterLink *outlink = inlink->dst->outputs[0];
    AVFrame *outpicref = FUNC4(outlink, outlink->w, outlink->h);
    if (!outpicref) {
        FUNC2(&inpicref);
        return FUNC0(ENOMEM);
    }
    FUNC1(outpicref, inpicref);
    outpicref->width  = outlink->w;
    outpicref->height = outlink->h;

    FUNC5(inlink->dst, inpicref->data[0], inpicref->linesize[0],
               outpicref->data[0], outpicref->linesize[0],
               inlink->w, inlink->h);

    FUNC2(&inpicref);
    return FUNC3(outlink, outpicref);
}