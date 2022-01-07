
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 scalar_t__* cpu_phys_ids ;
 int ml_get_max_cpu_number () ;

int
ml_get_cpu_number(uint32_t phys_id)
{
 for (int log_id = 0; log_id <= ml_get_max_cpu_number(); ++log_id) {
  if (cpu_phys_ids[log_id] == phys_id)
   return log_id;
 }
 return -1;
}
