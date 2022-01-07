
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef TYPE_1__* task_t ;
struct TYPE_3__ {int crashed_thread_id; } ;



uint64_t
task_corpse_get_crashed_thread_id(task_t corpse_task)
{
 return corpse_task->crashed_thread_id;
}
