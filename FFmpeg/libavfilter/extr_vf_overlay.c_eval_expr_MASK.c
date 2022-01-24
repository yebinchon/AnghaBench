#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* priv; } ;
struct TYPE_4__ {int /*<<< orphan*/  vsub; void** var_values; void* y; int /*<<< orphan*/  hsub; void* x; int /*<<< orphan*/  x_pexpr; int /*<<< orphan*/  y_pexpr; } ;
typedef  TYPE_1__ OverlayContext ;
typedef  TYPE_2__ AVFilterContext ;

/* Variables and functions */
 size_t VAR_X ; 
 size_t VAR_Y ; 
 void* FUNC0 (int /*<<< orphan*/ ,void**,int /*<<< orphan*/ *) ; 
 void* FUNC1 (void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(AVFilterContext *ctx)
{
    OverlayContext *s = ctx->priv;

    s->var_values[VAR_X] = FUNC0(s->x_pexpr, s->var_values, NULL);
    s->var_values[VAR_Y] = FUNC0(s->y_pexpr, s->var_values, NULL);
    /* It is necessary if x is expressed from y  */
    s->var_values[VAR_X] = FUNC0(s->x_pexpr, s->var_values, NULL);
    s->x = FUNC1(s->var_values[VAR_X], s->hsub);
    s->y = FUNC1(s->var_values[VAR_Y], s->vsub);
}