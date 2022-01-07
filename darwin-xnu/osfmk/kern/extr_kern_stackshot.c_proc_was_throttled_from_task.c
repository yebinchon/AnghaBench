
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef TYPE_1__* task_t ;
struct TYPE_3__ {scalar_t__ bsd_info; } ;


 int proc_was_throttled (scalar_t__) ;

__attribute__((used)) static uint64_t
proc_was_throttled_from_task(task_t task)
{
 uint64_t was_throttled = 0;

 if (task->bsd_info)
  was_throttled = proc_was_throttled(task->bsd_info);

 return was_throttled;
}
