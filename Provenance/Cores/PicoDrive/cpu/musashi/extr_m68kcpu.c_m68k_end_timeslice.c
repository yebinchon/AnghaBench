
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GET_CYCLES () ;
 int SET_CYCLES (int ) ;
 int m68ki_initial_cycles ;

void m68k_end_timeslice(void)
{
 m68ki_initial_cycles = GET_CYCLES();
 SET_CYCLES(0);
}
