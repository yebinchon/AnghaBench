
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int avail_cpus ;

int
ml_get_max_cpu_number(void)
{
 return avail_cpus - 1;
}
