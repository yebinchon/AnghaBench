
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kperf_kdebug_cswitch ;
 int kperf_on_cpu_update () ;

int
kperf_kdbg_cswitch_set(int newval)
{
 kperf_kdebug_cswitch = newval;
 kperf_on_cpu_update();

 return 0;
}
