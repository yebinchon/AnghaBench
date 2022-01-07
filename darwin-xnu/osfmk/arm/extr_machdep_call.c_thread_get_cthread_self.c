
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef uintptr_t vm_address_t ;
typedef uintptr_t kern_return_t ;
struct TYPE_3__ {uintptr_t cthread_self; } ;
struct TYPE_4__ {TYPE_1__ machine; } ;


 uintptr_t MACHDEP_CTHREAD_MASK ;
 int assert (int) ;
 TYPE_2__* current_thread () ;
 uintptr_t get_tpidrro () ;

vm_address_t
thread_get_cthread_self(void)
{
 uintptr_t self;

 self = get_tpidrro();





 self &= MACHDEP_CTHREAD_MASK;
 assert( self == current_thread()->machine.cthread_self);
 return self;

}
