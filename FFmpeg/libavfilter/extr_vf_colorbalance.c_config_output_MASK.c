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
struct TYPE_12__ {int /*<<< orphan*/  format; TYPE_5__* src; } ;
struct TYPE_11__ {TYPE_1__* comp; } ;
struct TYPE_10__ {int depth; int max; int step; int /*<<< orphan*/  rgba_map; int /*<<< orphan*/  color_balance; } ;
struct TYPE_9__ {int depth; } ;
typedef  TYPE_2__ ColorBalanceContext ;
typedef  TYPE_3__ AVPixFmtDescriptor ;
typedef  TYPE_4__ AVFilterLink ;
typedef  TYPE_5__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (TYPE_3__ const*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  color_balance16 ; 
 int /*<<< orphan*/  color_balance16_p ; 
 int /*<<< orphan*/  color_balance8 ; 
 int /*<<< orphan*/  color_balance8_p ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(AVFilterLink *outlink)
{
    AVFilterContext *ctx = outlink->src;
    ColorBalanceContext *s = ctx->priv;
    const AVPixFmtDescriptor *desc = FUNC2(outlink->format);
    const int depth = desc->comp[0].depth;
    const int max = (1 << depth) - 1;
    const int planar = FUNC1(outlink->format) > 1;

    s->depth = depth;
    s->max = max;

    if (max == 255 && planar) {
        s->color_balance = color_balance8_p;
    } else if (planar) {
        s->color_balance = color_balance16_p;
    } else if (max == 255) {
        s->color_balance = color_balance8;
    } else {
        s->color_balance = color_balance16;
    }

    FUNC3(s->rgba_map, outlink->format);
    s->step = FUNC0(desc) >> 3;

    return 0;
}