
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_address_t ;
typedef int kern_return_t ;


 int current_thread () ;
 int machine_thread_set_tsd_base (int ,int ) ;

kern_return_t
thread_set_cthread_self(vm_address_t self)
{
 return machine_thread_set_tsd_base(current_thread(), self);
}
