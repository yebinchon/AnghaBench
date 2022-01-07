
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* gather ) () ;} ;


 TYPE_1__* impl_current ;
 TYPE_1__ impl_threaded ;
 int msg_push_bak ;
 int stub1 () ;
 int task_queue_deinit () ;
 int task_queue_init (int,int ) ;
 int task_queue_is_threaded () ;

void task_queue_check(void)
{
   impl_current->gather();
}
