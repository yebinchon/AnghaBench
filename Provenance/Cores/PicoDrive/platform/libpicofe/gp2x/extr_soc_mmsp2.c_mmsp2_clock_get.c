
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_current_mhz ;

__attribute__((used)) static int mmsp2_clock_get(void)
{

 return cpu_current_mhz;
}
