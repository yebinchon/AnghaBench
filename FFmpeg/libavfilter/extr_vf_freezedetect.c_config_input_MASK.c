#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int ptrdiff_t ;
struct TYPE_12__ {TYPE_2__* priv; } ;
struct TYPE_11__ {int h; int /*<<< orphan*/  w; int /*<<< orphan*/  format; TYPE_5__* dst; } ;
struct TYPE_10__ {int log2_chroma_h; TYPE_1__* comp; } ;
struct TYPE_9__ {int bitdepth; int* width; int* height; int /*<<< orphan*/  sad; } ;
struct TYPE_8__ {int depth; } ;
typedef  TYPE_2__ FreezeDetectContext ;
typedef  TYPE_3__ AVPixFmtDescriptor ;
typedef  TYPE_4__ AVFilterLink ;
typedef  TYPE_5__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EINVAL ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(AVFilterLink *inlink)
{
    AVFilterContext *ctx = inlink->dst;
    FreezeDetectContext *s = ctx->priv;
    const AVPixFmtDescriptor *pix_desc = FUNC2(inlink->format);

    s->bitdepth = pix_desc->comp[0].depth;

    for (int plane = 0; plane < 4; plane++) {
        ptrdiff_t line_size = FUNC1(inlink->format, inlink->w, plane);
        s->width[plane] = line_size >> (s->bitdepth > 8);
        s->height[plane] = inlink->h >> ((plane == 1 || plane == 2) ? pix_desc->log2_chroma_h : 0);
    }

    s->sad = FUNC3(s->bitdepth == 8 ? 8 : 16);
    if (!s->sad)
        return FUNC0(EINVAL);

    return 0;
}