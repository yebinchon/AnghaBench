
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ task_t ;


 scalar_t__ current_task () ;
 int current_thread () ;
 int user_ldt_set (int ) ;

void
user_ldt_set_action(
 void *arg)
{
 task_t arg_task = (task_t)arg;

 if (arg_task == current_task()) {
     user_ldt_set(current_thread());
 }
}
