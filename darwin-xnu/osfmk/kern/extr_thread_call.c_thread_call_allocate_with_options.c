
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* thread_call_t ;
typedef int thread_call_priority_t ;
typedef int thread_call_param_t ;
typedef int thread_call_options_t ;
typedef int thread_call_func_t ;
struct TYPE_4__ {int tc_flags; int tc_index; } ;


 int THREAD_CALL_INDEX_HIGH ;
 int THREAD_CALL_INDEX_KERNEL ;
 int THREAD_CALL_INDEX_KERNEL_HIGH ;
 int THREAD_CALL_INDEX_LOW ;
 int THREAD_CALL_INDEX_USER ;
 int THREAD_CALL_ONCE ;
 int THREAD_CALL_OPTIONS_ONCE ;
 int THREAD_CALL_OPTIONS_SIGNAL ;





 int THREAD_CALL_SIGNAL ;
 int panic (char*,int) ;
 TYPE_1__* thread_call_allocate (int ,int ) ;

thread_call_t
thread_call_allocate_with_options(
  thread_call_func_t func,
  thread_call_param_t param0,
  thread_call_priority_t pri,
  thread_call_options_t options)
{
 thread_call_t call = thread_call_allocate(func, param0);

 switch (pri) {
  case 132:
   call->tc_index = THREAD_CALL_INDEX_HIGH;
   break;
  case 131:
   call->tc_index = THREAD_CALL_INDEX_KERNEL;
   break;
  case 128:
   call->tc_index = THREAD_CALL_INDEX_USER;
   break;
  case 129:
   call->tc_index = THREAD_CALL_INDEX_LOW;
   break;
  case 130:
   call->tc_index = THREAD_CALL_INDEX_KERNEL_HIGH;
   break;
  default:
   panic("Invalid thread call pri value: %d", pri);
   break;
 }

 if (options & THREAD_CALL_OPTIONS_ONCE) {
     call->tc_flags |= THREAD_CALL_ONCE;
 }
 if (options & THREAD_CALL_OPTIONS_SIGNAL) {
     call->tc_flags |= THREAD_CALL_SIGNAL | THREAD_CALL_ONCE;
 }

 return call;
}
