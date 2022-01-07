
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_2__* thread_t ;
typedef int kern_return_t ;
struct TYPE_6__ {int * ids; scalar_t__ ifps; } ;
struct TYPE_7__ {TYPE_1__ machine; } ;


 int KERN_SUCCESS ;
 int clear_fpu () ;
 TYPE_2__* current_thread () ;
 int fpu_set_fxstate (TYPE_2__*,int *,int ) ;
 int ids_zone ;
 int x86_FLOAT_STATE64 ;
 int zfree (int ,int *) ;

kern_return_t
machine_thread_state_initialize(
 thread_t thread)
{





 if (thread->machine.ifps) {
  (void) fpu_set_fxstate(thread, ((void*)0), x86_FLOAT_STATE64);

  if (thread == current_thread())
   clear_fpu();
 }

 if (thread->machine.ids) {
  zfree(ids_zone, thread->machine.ids);
  thread->machine.ids = ((void*)0);
 }

 return KERN_SUCCESS;
}
