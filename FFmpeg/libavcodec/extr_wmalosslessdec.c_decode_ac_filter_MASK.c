#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int acfilter_order; void* acfilter_scaling; int /*<<< orphan*/  gb; scalar_t__* acfilter_coeffs; } ;
typedef  TYPE_1__ WmallDecodeCtx ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,void*) ; 

__attribute__((used)) static void FUNC2(WmallDecodeCtx *s)
{
    int i;
    s->acfilter_order   = FUNC0(&s->gb, 4) + 1;
    s->acfilter_scaling = FUNC0(&s->gb, 4);

    for (i = 0; i < s->acfilter_order; i++)
        s->acfilter_coeffs[i] = FUNC1(&s->gb, s->acfilter_scaling) + 1;
}