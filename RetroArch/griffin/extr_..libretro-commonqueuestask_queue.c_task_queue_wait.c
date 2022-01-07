
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int retro_task_condition_fn_t ;
struct TYPE_2__ {int (* wait ) (int ,void*) ;} ;


 TYPE_1__* impl_current ;
 int stub1 (int ,void*) ;

void task_queue_wait(retro_task_condition_fn_t cond, void* data)
{
   impl_current->wait(cond, data);
}
