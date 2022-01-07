
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* AddIntcHandler (int ,int ,int ) ;
 int EnableIntc (int ) ;
 int INTC_TIM0 ;
 int INTC_TIM1 ;
 scalar_t__ T0_COUNT ;
 int T0_MODE ;
 scalar_t__ T1_MODE ;
 int t0_interrupt_handler ;
 void* t0_interrupt_id ;
 int t1_interrupt_handler ;
 void* t1_interrupt_id ;

__attribute__((used)) static void timer_initialize(void)
{
 T0_MODE = 0;
 t0_interrupt_id = AddIntcHandler(INTC_TIM0, t0_interrupt_handler, 0);
 EnableIntc(INTC_TIM0);
 T0_COUNT = 0;
 T0_MODE = 0x002
   + 0x080
   + 0x200;

 T1_MODE = 0;
 t1_interrupt_id = AddIntcHandler(INTC_TIM1, t1_interrupt_handler, 0);
 EnableIntc(INTC_TIM1);
}
