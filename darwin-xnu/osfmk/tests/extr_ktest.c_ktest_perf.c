
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ktest_current_time ;
 int ktest_emit_perfdata (char const*,char const*,double,char const*) ;
 int mach_absolute_time () ;

void
ktest_perf(const char * metric, const char * unit, double value, const char * desc)
{
 ktest_current_time = mach_absolute_time();
 ktest_emit_perfdata(metric, unit, value, desc);
}
