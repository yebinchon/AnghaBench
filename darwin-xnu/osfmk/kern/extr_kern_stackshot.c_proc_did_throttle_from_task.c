
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef TYPE_1__* task_t ;
struct TYPE_3__ {scalar_t__ bsd_info; } ;


 int proc_did_throttle (scalar_t__) ;

__attribute__((used)) static uint64_t
proc_did_throttle_from_task(task_t task)
{
 uint64_t did_throttle = 0;

 if (task->bsd_info)
  did_throttle = proc_did_throttle(task->bsd_info);

 return did_throttle;
}
