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
typedef  int uint8_t ;
struct TYPE_4__ {int range; int* zero_state; int* one_state; int /*<<< orphan*/  low; } ;
typedef  TYPE_1__ RangeCoder ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static inline void FUNC2(RangeCoder *c, uint8_t *const state, int bit)
{
    int range1 = (c->range * (*state)) >> 8;

    FUNC0(*state);
    FUNC0(range1 < c->range);
    FUNC0(range1 > 0);
    if (!bit) {
        c->range -= range1;
        *state    = c->zero_state[*state];
    } else {
        c->low  += c->range - range1;
        c->range = range1;
        *state   = c->one_state[*state];
    }

    FUNC1(c);
}