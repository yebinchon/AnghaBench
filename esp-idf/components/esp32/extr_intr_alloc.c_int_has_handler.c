
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ handler; } ;


 TYPE_1__* _xt_interrupt_table ;
 int portNUM_PROCESSORS ;
 scalar_t__ xt_unhandled_interrupt ;

__attribute__((used)) static bool int_has_handler(int intr, int cpu)
{
    return (_xt_interrupt_table[intr*portNUM_PROCESSORS+cpu].handler != xt_unhandled_interrupt);
}
