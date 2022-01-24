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
struct TYPE_13__ {int h; int w; int /*<<< orphan*/  format; TYPE_1__* dst; } ;
struct TYPE_12__ {int /*<<< orphan*/  log2_chroma_h; int /*<<< orphan*/  log2_chroma_w; TYPE_2__* comp; } ;
struct TYPE_11__ {void* src; void* temp; void* temp_linesize; int /*<<< orphan*/  vsub; int /*<<< orphan*/  hsub; int /*<<< orphan*/  dct; } ;
struct TYPE_10__ {int depth; } ;
struct TYPE_9__ {TYPE_3__* priv; } ;
typedef  TYPE_3__ SPPContext ;
typedef  TYPE_4__ AVPixFmtDescriptor ;
typedef  TYPE_5__ AVFilterLink ;

/* Variables and functions */
 scalar_t__ ARCH_X86 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 void* FUNC1 (int,int) ; 
 void* FUNC2 (void*,int const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int const,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC7(AVFilterLink *inlink)
{
    SPPContext *s = inlink->dst->priv;
    const int h = FUNC1(inlink->h + 16, 16);
    const AVPixFmtDescriptor *desc = FUNC4(inlink->format);
    const int bps = desc->comp[0].depth;

    FUNC3(s->dct, "bits_per_sample", bps, 0);
    FUNC5(s->dct);

    if (ARCH_X86)
        FUNC6(s);

    s->hsub = desc->log2_chroma_w;
    s->vsub = desc->log2_chroma_h;
    s->temp_linesize = FUNC1(inlink->w + 16, 16);
    s->temp = FUNC2(s->temp_linesize, h * sizeof(*s->temp));
    s->src  = FUNC2(s->temp_linesize, h * sizeof(*s->src) * 2);

    if (!s->temp || !s->src)
        return FUNC0(ENOMEM);
    return 0;
}