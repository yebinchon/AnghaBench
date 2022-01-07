
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int kprintf (char*,void*) ;
 int pe_arm_init_timer (void*) ;
 int pe_arm_map_interrupt_controller () ;

uint32_t
pe_arm_init_interrupts(void *args)
{
 kprintf("pe_arm_init_interrupts: args: %p\n", args);


 if (args != ((void*)0)) {
  if (!pe_arm_map_interrupt_controller()) {
   return 0;
  }
 }

 return pe_arm_init_timer(args);
}
