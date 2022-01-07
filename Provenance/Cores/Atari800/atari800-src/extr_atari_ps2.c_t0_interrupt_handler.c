
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int T0_MODE ;
 int timer_interrupt_ticks ;

__attribute__((used)) static int t0_interrupt_handler(int ca)
{
 timer_interrupt_ticks++;
 T0_MODE |= 0x800;

 return -1;
}
