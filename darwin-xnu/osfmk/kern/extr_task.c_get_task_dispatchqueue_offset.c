
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef TYPE_1__* task_t ;
struct TYPE_3__ {int dispatchqueue_offset; } ;



uint64_t
get_task_dispatchqueue_offset(
  task_t task)
{
 return task->dispatchqueue_offset;
}
