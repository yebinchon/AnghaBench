
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int irq; } ;
typedef TYPE_1__ Q68State ;



void q68_set_irq(Q68State *state, int irq)
{
    state->irq = irq & 7;
}
