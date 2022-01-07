
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GET_CYCLES () ;

int m68k_cycles_remaining(void)
{
 return GET_CYCLES();
}
