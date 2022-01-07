
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meminfo {int purgeable_volatile_compressed; int purgeable_volatile; int phys_footprint; } ;


 int BUF_DATA (int ,int ,int ,int ) ;
 int PERF_MI_DATA ;

void
kperf_meminfo_log(struct meminfo *mi)
{
 BUF_DATA(PERF_MI_DATA, mi->phys_footprint, mi->purgeable_volatile,
          mi->purgeable_volatile_compressed);
}
