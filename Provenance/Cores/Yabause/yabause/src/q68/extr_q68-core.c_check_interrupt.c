
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int irq; scalar_t__ halted; scalar_t__ exception; } ;
typedef TYPE_1__ Q68State ;


 scalar_t__ EX_LEVEL_1_INTERRUPT ;
 scalar_t__ Q68_HALTED_DOUBLE_FAULT ;
 int const SR_GET_I (TYPE_1__*) ;
 scalar_t__ UNLIKELY (int) ;

__attribute__((used)) static inline void check_interrupt(Q68State *state)
{
    const int irq = state->irq & 7;
    if (UNLIKELY(irq > SR_GET_I(state)
              || irq == 7
    )) {
        if (state->halted != Q68_HALTED_DOUBLE_FAULT) {
            state->irq = 0;
            state->halted = 0;
            state->exception = EX_LEVEL_1_INTERRUPT + (irq-1);
        }
    }
}
