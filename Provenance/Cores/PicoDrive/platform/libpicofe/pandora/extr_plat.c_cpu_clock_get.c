
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int read_int_from_file (char*) ;

__attribute__((used)) static int cpu_clock_get(void)
{
 return read_int_from_file("/proc/pandora/cpu_mhz_max");
}
