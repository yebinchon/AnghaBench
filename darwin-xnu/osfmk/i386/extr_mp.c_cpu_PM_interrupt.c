
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASYNC ;
 int MP_CALL_PM ;
 int assert (int) ;
 int cpu_number () ;
 int i386_signal_cpu (int,int ,int ) ;
 int ml_get_interrupts_enabled () ;
 int mp_PM_func () ;

void
cpu_PM_interrupt(int cpu)
{
 assert(!ml_get_interrupts_enabled());

 if (mp_PM_func != ((void*)0)) {
  if (cpu == cpu_number())
   mp_PM_func();
  else
   i386_signal_cpu(cpu, MP_CALL_PM, ASYNC);
 }
}
