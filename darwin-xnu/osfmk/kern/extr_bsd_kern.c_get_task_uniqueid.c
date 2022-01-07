
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef TYPE_1__* task_t ;
struct TYPE_3__ {scalar_t__ bsd_info; } ;


 int UINT64_MAX ;
 int proc_uniqueid (scalar_t__) ;

uint64_t
get_task_uniqueid(task_t task)
{
 if (task->bsd_info) {
  return proc_uniqueid(task->bsd_info);
 } else {
  return UINT64_MAX;
 }
}
