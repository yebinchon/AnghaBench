
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef TYPE_1__* task_t ;
struct TYPE_3__ {scalar_t__ bsd_info; } ;


 int get_dispatchqueue_serialno_offset_from_proc (scalar_t__) ;

uint64_t
get_task_dispatchqueue_serialno_offset(task_t task)
{
 uint64_t dq_serialno_offset = 0;

 if (task->bsd_info) {
  dq_serialno_offset = get_dispatchqueue_serialno_offset_from_proc(task->bsd_info);
 }

 return dq_serialno_offset;
}
