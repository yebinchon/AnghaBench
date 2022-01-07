
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int kern_return_t ;
struct TYPE_4__ {int cpu_processor; int cpu_number; } ;
struct TYPE_3__ {int max_cpus; } ;


 int KERN_FAILURE ;
 int KERN_SUCCESS ;
 int TOPO_DBG (char*,...) ;
 TYPE_2__* cpu_datap (int) ;
 TYPE_1__ machine_info ;
 int processor_start (int ) ;

kern_return_t
cpu_topology_start_cpu( int cpunum )
{
 int ncpus = machine_info.max_cpus;
 int i = cpunum;


 TOPO_DBG("cpu_topology_start() processor_start():\n");
 if( i < ncpus)
 {
  TOPO_DBG("\tlcpu %d\n", cpu_datap(i)->cpu_number);
  processor_start(cpu_datap(i)->cpu_processor);
  return KERN_SUCCESS;
 }
 else
     return KERN_FAILURE;
}
