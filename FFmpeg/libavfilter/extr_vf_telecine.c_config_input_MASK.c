#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int out_cnt; int /*<<< orphan*/  nb_planes; int /*<<< orphan*/ * planeheight; int /*<<< orphan*/  stride; void** frame; void* temp; } ;
typedef  TYPE_2__ TelecineContext ;
struct TYPE_11__ {int /*<<< orphan*/  format; int /*<<< orphan*/  h; int /*<<< orphan*/  w; TYPE_1__* dst; } ;
struct TYPE_10__ {int /*<<< orphan*/  log2_chroma_h; } ;
struct TYPE_8__ {TYPE_2__* priv; } ;
typedef  TYPE_3__ AVPixFmtDescriptor ;
typedef  TYPE_4__ AVFilterLink ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(AVFilterLink *inlink)
{
    TelecineContext *s = inlink->dst->priv;
    const AVPixFmtDescriptor *desc = FUNC4(inlink->format);
    int i, ret;

    s->temp = FUNC5(inlink, inlink->w, inlink->h);
    if (!s->temp)
        return FUNC0(ENOMEM);
    for (i = 0; i < s->out_cnt; i++) {
        s->frame[i] = FUNC5(inlink, inlink->w, inlink->h);
        if (!s->frame[i])
            return FUNC0(ENOMEM);
    }

    if ((ret = FUNC2(s->stride, inlink->format, inlink->w)) < 0)
        return ret;

    s->planeheight[1] = s->planeheight[2] = FUNC1(inlink->h, desc->log2_chroma_h);
    s->planeheight[0] = s->planeheight[3] = inlink->h;

    s->nb_planes = FUNC3(inlink->format);

    return 0;
}