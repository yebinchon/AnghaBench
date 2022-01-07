
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPU_STOPPED ;
 int STOP_LEVEL_HALT ;

void m68k_pulse_halt(void)
{
 CPU_STOPPED |= STOP_LEVEL_HALT;
}
