
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cpu_cluster_id; } ;


 TYPE_1__* getCpuDatap () ;

int
cpu_cluster_id(void)
{
 return (getCpuDatap()->cpu_cluster_id);
}
