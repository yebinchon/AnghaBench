
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int * task_t ;


 int assert (int *) ;
 int get_task_memory_region_count (int *) ;

__attribute__((used)) static void
memorystatus_get_task_memory_region_count(task_t task, uint64_t *count)
{
 assert(task);
 assert(count);

 *count = get_task_memory_region_count(task);
}
