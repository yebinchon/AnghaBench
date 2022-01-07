
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int cpu_clock_get () ;
 int do_system (char*) ;
 char* pnd_script_base ;
 int snprintf (char*,int,char*,char*,int) ;

__attribute__((used)) static int cpu_clock_set(int cpu_clock)
{
 char buf[128];

 if (cpu_clock < 14)
  return -1;

 if (cpu_clock == cpu_clock_get())
  return 0;

 snprintf(buf, sizeof(buf),
   "unset DISPLAY; echo y | %s/op_cpuspeed.sh %d",
   pnd_script_base, cpu_clock);
 return do_system(buf);
}
