
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef TYPE_3__* thread_t ;
struct TYPE_6__ {scalar_t__ cthread_self; } ;
struct TYPE_8__ {TYPE_2__* task; TYPE_1__ machine; } ;
struct TYPE_7__ {scalar_t__ bsd_info; } ;


 TYPE_3__* THREAD_NULL ;
 scalar_t__ get_return_to_kernel_offset_from_proc (scalar_t__) ;

uint64_t
thread_rettokern_addr(
 thread_t thread)
{
 uint64_t rettokern_addr;
 uint64_t rettokern_offset;
 uint64_t thread_handle;

 if (thread == THREAD_NULL)
  return 0;

 thread_handle = thread->machine.cthread_self;
 if (thread_handle == 0)
  return 0;

 if (thread->task->bsd_info) {
  rettokern_offset = get_return_to_kernel_offset_from_proc(thread->task->bsd_info);


  if (rettokern_offset == 0) {
   rettokern_addr = 0;
  } else {
   rettokern_addr = thread_handle + rettokern_offset;
  }
 } else {
  rettokern_addr = 0;
 }

 return rettokern_addr;
}
