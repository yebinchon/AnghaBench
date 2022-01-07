
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int task_t ;


 int TRUE ;
 int get_bank_task_context (int ,int ) ;

void
bank_task_initialize(task_t task)
{
 get_bank_task_context(task, TRUE);
}
