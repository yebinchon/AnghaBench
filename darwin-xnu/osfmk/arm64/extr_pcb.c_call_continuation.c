
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int wait_result_t ;
typedef int thread_continue_t ;
typedef int boolean_t ;
struct TYPE_4__ {int kstackptr; } ;
struct TYPE_5__ {TYPE_1__ machine; } ;


 int Call_continuation (int ,void*,int ,int ) ;
 int call_continuation_kprintf (char*,TYPE_2__*,int ,int ) ;
 TYPE_2__* current_thread () ;

void
call_continuation(
 thread_continue_t continuation,
 void *parameter,
 wait_result_t wresult,
 boolean_t enable_interrupts)
{


                                                                                                                                              ;
 Call_continuation(continuation, parameter, wresult, enable_interrupts);
}
