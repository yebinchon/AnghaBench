#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {TYPE_2__* priv; } ;
struct TYPE_12__ {int h; int /*<<< orphan*/  time_base; int /*<<< orphan*/  w; int /*<<< orphan*/  format; TYPE_5__* dst; } ;
struct TYPE_11__ {int log2_chroma_h; TYPE_1__* comp; } ;
struct TYPE_10__ {int vsub; int* height; int bitdepth; int /*<<< orphan*/  srce_time_base; int /*<<< orphan*/  sad; int /*<<< orphan*/ * line_size; } ;
struct TYPE_9__ {int depth; } ;
typedef  TYPE_2__ FrameRateContext ;
typedef  TYPE_3__ AVPixFmtDescriptor ;
typedef  TYPE_4__ AVFilterLink ;
typedef  TYPE_5__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(AVFilterLink *inlink)
{
    AVFilterContext *ctx = inlink->dst;
    FrameRateContext *s = ctx->priv;
    const AVPixFmtDescriptor *pix_desc = FUNC2(inlink->format);
    int plane;

    s->vsub = pix_desc->log2_chroma_h;
    for (plane = 0; plane < 4; plane++) {
        s->line_size[plane] = FUNC1(inlink->format, inlink->w, plane);
        s->height[plane] = inlink->h >> ((plane == 1 || plane == 2) ? s->vsub : 0);
    }

    s->bitdepth = pix_desc->comp[0].depth;

    s->sad = FUNC4(s->bitdepth == 8 ? 8 : 16);
    if (!s->sad)
        return FUNC0(EINVAL);

    s->srce_time_base = inlink->time_base;

    FUNC3(s);

    return 0;
}