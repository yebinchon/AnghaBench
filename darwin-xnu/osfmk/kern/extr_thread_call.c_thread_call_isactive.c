
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* thread_call_t ;
typedef int spl_t ;
typedef int boolean_t ;
struct TYPE_3__ {scalar_t__ tc_submit_count; scalar_t__ tc_finish_count; } ;


 int disable_ints_and_lock () ;
 int enable_ints_and_unlock (int ) ;

boolean_t
thread_call_isactive(thread_call_t call)
{
 boolean_t active;

 spl_t s = disable_ints_and_lock();
 active = (call->tc_submit_count > call->tc_finish_count);
 enable_ints_and_unlock(s);

 return active;
}
