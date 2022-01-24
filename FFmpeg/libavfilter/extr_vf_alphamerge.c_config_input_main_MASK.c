#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  format; TYPE_1__* dst; } ;
struct TYPE_6__ {int is_packed_rgb; int /*<<< orphan*/  rgba_map; } ;
struct TYPE_5__ {TYPE_2__* priv; } ;
typedef  TYPE_2__ AlphaMergeContext ;
typedef  TYPE_3__ AVFilterLink ;

/* Variables and functions */
 int /*<<< orphan*/  AV_PIX_FMT_GBRAP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(AVFilterLink *inlink)
{
    AlphaMergeContext *s = inlink->dst->priv;
    s->is_packed_rgb =
        FUNC0(s->rgba_map, inlink->format) >= 0 &&
        inlink->format != AV_PIX_FMT_GBRAP;
    return 0;
}