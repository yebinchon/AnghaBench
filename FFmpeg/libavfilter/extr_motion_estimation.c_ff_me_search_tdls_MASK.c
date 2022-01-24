#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_4__ {int /*<<< orphan*/  (* get_cost ) (TYPE_1__*,int,int,int,int) ;scalar_t__ search_param; int /*<<< orphan*/  y_max; int /*<<< orphan*/  x_max; int /*<<< orphan*/  y_min; int /*<<< orphan*/  x_min; } ;
typedef  TYPE_1__ AVMotionEstContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC3 (scalar_t__,int) ; 
 int** dia1 ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,int,int,int) ; 

uint64_t FUNC5(AVMotionEstContext *me_ctx, int x_mb, int y_mb, int *mv)
{
    int x, y;
    int x_min = FUNC1(me_ctx->x_min, x_mb - me_ctx->search_param);
    int y_min = FUNC1(me_ctx->y_min, y_mb - me_ctx->search_param);
    int x_max = FUNC2(x_mb + me_ctx->search_param, me_ctx->x_max);
    int y_max = FUNC2(y_mb + me_ctx->search_param, me_ctx->y_max);
    uint64_t cost, cost_min;
    int step = FUNC3(me_ctx->search_param, 2);
    int i;

    mv[0] = x_mb;
    mv[1] = y_mb;

    if (!(cost_min = me_ctx->get_cost(me_ctx, x_mb, y_mb, x_mb, y_mb)))
        return cost_min;

    do {
        x = mv[0];
        y = mv[1];

        for (i = 0; i < 4; i++)
            FUNC0(x + dia1[i][0] * step, y + dia1[i][1] * step);

        if (x == mv[0] && y == mv[1])
            step = step >> 1;

    } while (step > 0);

    return cost_min;
}