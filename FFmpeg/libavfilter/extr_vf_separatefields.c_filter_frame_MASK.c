#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {TYPE_3__** outputs; TYPE_1__* priv; } ;
struct TYPE_14__ {int /*<<< orphan*/  h; TYPE_4__* dst; } ;
struct TYPE_13__ {int top_field_first; scalar_t__ pts; scalar_t__ interlaced_frame; int /*<<< orphan*/  height; } ;
struct TYPE_12__ {int /*<<< orphan*/  nb_planes; TYPE_2__* second; } ;
typedef  TYPE_1__ SeparateFieldsContext ;
typedef  TYPE_2__ AVFrame ;
typedef  TYPE_3__ AVFilterLink ;
typedef  TYPE_4__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ AV_NOPTS_VALUE ; 
 int /*<<< orphan*/  ENOMEM ; 
 TYPE_2__* FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (TYPE_3__*,TYPE_2__*) ; 

__attribute__((used)) static int FUNC4(AVFilterLink *inlink, AVFrame *inpicref)
{
    AVFilterContext *ctx = inlink->dst;
    SeparateFieldsContext *s = ctx->priv;
    AVFilterLink *outlink = ctx->outputs[0];
    int ret;

    inpicref->height = outlink->h;
    inpicref->interlaced_frame = 0;

    if (!s->second) {
        goto clone;
    } else {
        AVFrame *second = s->second;

        FUNC2(second, s->nb_planes, second->top_field_first);

        if (second->pts != AV_NOPTS_VALUE &&
            inpicref->pts != AV_NOPTS_VALUE)
            second->pts += inpicref->pts;
        else
            second->pts = AV_NOPTS_VALUE;

        ret = FUNC3(outlink, second);
        if (ret < 0)
            return ret;
clone:
        s->second = FUNC1(inpicref);
        if (!s->second)
            return FUNC0(ENOMEM);
    }

    FUNC2(inpicref, s->nb_planes, !inpicref->top_field_first);

    if (inpicref->pts != AV_NOPTS_VALUE)
        inpicref->pts *= 2;

    return FUNC3(outlink, inpicref);
}