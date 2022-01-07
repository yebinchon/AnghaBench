
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* task_t ;
struct TYPE_3__ {scalar_t__ bsd_info; } ;


 int INT_MAX ;
 int proc_pidversion (scalar_t__) ;

int
get_task_version(task_t task)
{
 if (task->bsd_info) {
  return proc_pidversion(task->bsd_info);
 } else {
  return INT_MAX;
 }
}
