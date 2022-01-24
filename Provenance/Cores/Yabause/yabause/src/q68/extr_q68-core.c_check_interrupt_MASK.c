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
struct TYPE_4__ {int irq; scalar_t__ halted; scalar_t__ exception; } ;
typedef  TYPE_1__ Q68State ;

/* Variables and functions */
 scalar_t__ EX_LEVEL_1_INTERRUPT ; 
 scalar_t__ Q68_HALTED_DOUBLE_FAULT ; 
 int const FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static inline void FUNC2(Q68State *state)
{
    const int irq = state->irq & 7;  // Just to be safe
    if (FUNC1(irq > FUNC0(state)
              || irq == 7  // Level 7 is the non-maskable interrupt
    )) {
        if (state->halted != Q68_HALTED_DOUBLE_FAULT) {
            state->irq = 0;
            state->halted = 0;
            state->exception = EX_LEVEL_1_INTERRUPT + (irq-1);
        }
    }
}