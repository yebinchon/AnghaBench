
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pet_idle_rate ;
 int pet_sample_all_tasks (int ) ;

__attribute__((used)) static void
pet_thread_work_unit(void)
{
 pet_sample_all_tasks(pet_idle_rate);
}
