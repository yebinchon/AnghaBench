
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* thread_call_t ;
typedef int thread_call_param_t ;
typedef int thread_call_options_t ;
typedef int thread_call_func_t ;
struct TYPE_4__ {int tc_flags; int tc_index; } ;


 int THREAD_CALL_INDEX_HIGH ;
 int THREAD_CALL_INDEX_LOW ;
 int THREAD_CALL_INDEX_QOS_IN ;
 int THREAD_CALL_INDEX_QOS_UI ;
 int THREAD_CALL_INDEX_QOS_UT ;
 int THREAD_CALL_INDEX_USER ;
 int THREAD_CALL_ONCE ;
 int THREAD_CALL_OPTIONS_ONCE ;







 int panic (char*,int) ;
 TYPE_1__* thread_call_allocate (int ,int ) ;

thread_call_t
thread_call_allocate_with_qos(thread_call_func_t func,
                              thread_call_param_t param0,
                              int qos_tier,
                              thread_call_options_t options)
{
 thread_call_t call = thread_call_allocate(func, param0);

 switch (qos_tier) {
  case 131:
   call->tc_index = THREAD_CALL_INDEX_HIGH;
   break;
  case 133:
   call->tc_index = THREAD_CALL_INDEX_USER;
   break;
  case 132:
  case 134:
   call->tc_index = THREAD_CALL_INDEX_LOW;
   break;
  case 128:
   call->tc_index = THREAD_CALL_INDEX_QOS_UT;
   break;
  case 130:
   call->tc_index = THREAD_CALL_INDEX_QOS_IN;
   break;
  case 129:
   call->tc_index = THREAD_CALL_INDEX_QOS_UI;
   break;
  default:
   panic("Invalid thread call qos value: %d", qos_tier);
   break;
 }

 if (options & THREAD_CALL_OPTIONS_ONCE)
  call->tc_flags |= THREAD_CALL_ONCE;



 return call;
}
