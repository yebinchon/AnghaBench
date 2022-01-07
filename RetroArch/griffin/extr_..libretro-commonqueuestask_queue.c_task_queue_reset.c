
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* reset ) () ;} ;


 TYPE_1__* impl_current ;
 int stub1 () ;

void task_queue_reset(void)
{
   impl_current->reset();
}
