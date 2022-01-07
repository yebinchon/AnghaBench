
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lprintf (char*,int) ;
 int scePowerSetClockFrequency (int,int,int) ;

int psp_set_cpu_clock(int clock)
{
 int ret = scePowerSetClockFrequency(clock, clock, clock/2);
 if (ret != 0) lprintf("failed to set clock: %i\n", ret);

 return ret;
}
