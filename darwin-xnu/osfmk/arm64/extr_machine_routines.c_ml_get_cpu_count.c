
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int avail_cpus ;

unsigned int
ml_get_cpu_count(void)
{
 return avail_cpus;
}
