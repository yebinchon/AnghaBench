#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  log2_chroma_h; TYPE_1__* comp; } ;
struct TYPE_10__ {TYPE_3__** inputs; TYPE_2__* priv; } ;
struct TYPE_9__ {int /*<<< orphan*/  h; int /*<<< orphan*/  w; int /*<<< orphan*/  format; TYPE_4__* src; } ;
struct TYPE_8__ {int depth; int /*<<< orphan*/ * height; TYPE_6__* desc; int /*<<< orphan*/  linesize; int /*<<< orphan*/  lagfun; int /*<<< orphan*/  nb_planes; } ;
struct TYPE_7__ {int depth; } ;
typedef  TYPE_2__ LagfunContext ;
typedef  TYPE_3__ AVFilterLink ;
typedef  TYPE_4__ AVFilterContext ;

/* Variables and functions */
 int AVERROR_BUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lagfun_frame16 ; 
 int /*<<< orphan*/  lagfun_frame8 ; 

__attribute__((used)) static int FUNC4(AVFilterLink *outlink)
{
    AVFilterContext *ctx = outlink->src;
    LagfunContext *s = ctx->priv;
    AVFilterLink *inlink = ctx->inputs[0];
    int ret;

    s->desc = FUNC3(outlink->format);
    if (!s->desc)
        return AVERROR_BUG;
    s->nb_planes = FUNC2(outlink->format);
    s->depth = s->desc->comp[0].depth;
    s->lagfun = s->depth <= 8 ? lagfun_frame8 : lagfun_frame16;

    if ((ret = FUNC1(s->linesize, inlink->format, inlink->w)) < 0)
        return ret;

    s->height[1] = s->height[2] = FUNC0(inlink->h, s->desc->log2_chroma_h);
    s->height[0] = s->height[3] = inlink->h;

    return 0;
}