#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {struct TYPE_6__* noise_buf; } ;
struct TYPE_5__ {int channels; TYPE_4__* state; int /*<<< orphan*/  ac_out; int /*<<< orphan*/  ac_in; int /*<<< orphan*/  s16_data; int /*<<< orphan*/  flt_data; } ;
typedef  TYPE_1__ DitherContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(DitherContext **cp)
{
    DitherContext *c = *cp;
    int ch;

    if (!c)
        return;
    FUNC3(&c->flt_data);
    FUNC3(&c->s16_data);
    FUNC2(&c->ac_in);
    FUNC2(&c->ac_out);
    for (ch = 0; ch < c->channels; ch++)
        FUNC0(c->state[ch].noise_buf);
    FUNC0(c->state);
    FUNC1(cp);
}