
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int kern_return_t ;


 int USER_CTHREAD ;
 int current_thread () ;
 int machine_thread_set_tsd_base (int ,int ) ;

kern_return_t
thread_fast_set_cthread_self(uint32_t self)
{
 machine_thread_set_tsd_base(current_thread(), self);
 return (USER_CTHREAD);
}
