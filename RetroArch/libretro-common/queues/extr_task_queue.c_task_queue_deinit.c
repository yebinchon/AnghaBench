
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* deinit ) () ;} ;


 TYPE_1__* impl_current ;
 int stub1 () ;

void task_queue_deinit(void)
{
   if (impl_current)
      impl_current->deinit();
   impl_current = ((void*)0);
}
