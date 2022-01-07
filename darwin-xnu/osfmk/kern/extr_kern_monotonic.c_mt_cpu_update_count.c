
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int cpu_monotonic; } ;
typedef TYPE_1__ cpu_data_t ;


 int mt_mtc_update_count (int *,unsigned int) ;

uint64_t
mt_cpu_update_count(cpu_data_t *cpu, unsigned int ctr)
{
 return mt_mtc_update_count(&cpu->cpu_monotonic, ctr);
}
