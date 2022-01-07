
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int preemption_count; } ;
struct TYPE_4__ {TYPE_1__ machine; } ;


 TYPE_2__* current_thread () ;

int get_preemption_level(void)
{
 return current_thread()->machine.preemption_count;
}
