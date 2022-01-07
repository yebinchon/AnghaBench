
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int task_t ;


 int current_task () ;
 int mt_fixed_task_counts (int ,int *) ;

void
mt_cur_task_fixed_counts(uint64_t *counts)
{
 task_t curtask = current_task();

 mt_fixed_task_counts(curtask, counts);
}
