
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int task_t ;
struct TYPE_2__ {scalar_t__ ri_phys_footprint; } ;
struct rusage_superset {TYPE_1__ ri; } ;
typedef int proc_t ;
typedef int mach_exception_data_type_t ;


 int RUSAGE_INFO_CURRENT ;
 int gather_rusage_info (int ,TYPE_1__*,int ) ;
 int populate_corpse_crashinfo (int ,int ,struct rusage_superset*,int ,int ,int *,int,void*) ;

void gather_populate_corpse_crashinfo(proc_t p, task_t corpse_task,
  mach_exception_data_type_t code, mach_exception_data_type_t subcode,
  uint64_t *udata_buffer, int num_udata, void *reason)
{
 struct rusage_superset rup;

 gather_rusage_info(p, &rup.ri, RUSAGE_INFO_CURRENT);
 rup.ri.ri_phys_footprint = 0;
 populate_corpse_crashinfo(p, corpse_task, &rup, code, subcode,
   udata_buffer, num_udata, reason);
}
