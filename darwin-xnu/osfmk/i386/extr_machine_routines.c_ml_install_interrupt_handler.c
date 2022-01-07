
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;
typedef scalar_t__ IOInterruptHandler ;


 int FALSE ;
 int PE_install_interrupt_handler (void*,int,void*,scalar_t__,void*) ;
 int initialize_screen (int *,int ) ;
 int kPEAcquireScreen ;
 int ml_set_interrupts_enabled (int ) ;

void ml_install_interrupt_handler(
 void *nub,
 int source,
 void *target,
 IOInterruptHandler handler,
 void *refCon)
{
 boolean_t current_state;

 current_state = ml_set_interrupts_enabled(FALSE);

 PE_install_interrupt_handler(nub, source, target,
                              (IOInterruptHandler) handler, refCon);

 (void) ml_set_interrupts_enabled(current_state);

 initialize_screen(((void*)0), kPEAcquireScreen);
}
