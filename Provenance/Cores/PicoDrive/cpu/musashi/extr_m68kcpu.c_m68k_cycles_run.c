
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GET_CYCLES () ;
 int m68ki_initial_cycles ;

int m68k_cycles_run(void)
{
 return m68ki_initial_cycles - GET_CYCLES();
}
