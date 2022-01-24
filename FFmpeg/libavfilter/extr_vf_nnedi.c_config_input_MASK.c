#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_1__* priv; } ;
struct TYPE_9__ {int /*<<< orphan*/  h; int /*<<< orphan*/  w; int /*<<< orphan*/  format; TYPE_4__* dst; } ;
struct TYPE_8__ {int /*<<< orphan*/  log2_chroma_h; } ;
struct TYPE_7__ {int /*<<< orphan*/ * planeheight; int /*<<< orphan*/  linesize; int /*<<< orphan*/  nb_planes; } ;
typedef  TYPE_1__ NNEDIContext ;
typedef  TYPE_2__ AVPixFmtDescriptor ;
typedef  TYPE_3__ AVFilterLink ;
typedef  TYPE_4__ AVFilterContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(AVFilterLink *inlink)
{
    AVFilterContext *ctx = inlink->dst;
    NNEDIContext *s = ctx->priv;
    const AVPixFmtDescriptor *desc = FUNC3(inlink->format);
    int ret;

    s->nb_planes = FUNC2(inlink->format);
    if ((ret = FUNC1(s->linesize, inlink->format, inlink->w)) < 0)
        return ret;

    s->planeheight[1] = s->planeheight[2] = FUNC0(inlink->h, desc->log2_chroma_h);
    s->planeheight[0] = s->planeheight[3] = inlink->h;

    return 0;
}