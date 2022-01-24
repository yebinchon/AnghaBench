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
struct TYPE_10__ {int /*<<< orphan*/  h; int /*<<< orphan*/  w; int /*<<< orphan*/  format; TYPE_1__* dst; } ;
struct TYPE_9__ {int /*<<< orphan*/  log2_chroma_h; } ;
struct TYPE_8__ {int /*<<< orphan*/ * height; int /*<<< orphan*/  bytewidth; int /*<<< orphan*/  nb_planes; } ;
struct TYPE_7__ {TYPE_2__* priv; } ;
typedef  TYPE_2__ NoiseContext ;
typedef  TYPE_3__ AVPixFmtDescriptor ;
typedef  TYPE_4__ AVFilterLink ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(AVFilterLink *inlink)
{
    NoiseContext *n = inlink->dst->priv;
    const AVPixFmtDescriptor *desc = FUNC3(inlink->format);
    int ret;

    n->nb_planes = FUNC2(inlink->format);

    if ((ret = FUNC1(n->bytewidth, inlink->format, inlink->w)) < 0)
        return ret;

    n->height[1] = n->height[2] = FUNC0(inlink->h, desc->log2_chroma_h);
    n->height[0] = n->height[3] = inlink->h;

    return 0;
}