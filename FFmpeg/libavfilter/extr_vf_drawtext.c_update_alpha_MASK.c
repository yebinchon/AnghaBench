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
struct TYPE_3__ {int alpha; int /*<<< orphan*/  prng; int /*<<< orphan*/  var_values; int /*<<< orphan*/  a_pexpr; } ;
typedef  TYPE_1__ DrawTextContext ;

/* Variables and functions */
 double FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (double) ; 

__attribute__((used)) static void FUNC2(DrawTextContext *s)
{
    double alpha = FUNC0(s->a_pexpr, s->var_values, &s->prng);

    if (FUNC1(alpha))
        return;

    if (alpha >= 1.0)
        s->alpha = 255;
    else if (alpha <= 0)
        s->alpha = 0;
    else
        s->alpha = 256 * alpha;
}