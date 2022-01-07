
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_CYCLES (int) ;
 int m68ki_initial_cycles ;

void m68k_modify_timeslice(int cycles)
{
 m68ki_initial_cycles += cycles;
 ADD_CYCLES(cycles);
}
