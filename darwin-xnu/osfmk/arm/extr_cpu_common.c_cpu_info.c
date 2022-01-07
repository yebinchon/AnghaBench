
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int processor_info_t ;
typedef int processor_flavor_t ;
typedef TYPE_2__* processor_cpu_stat_t ;
typedef int kern_return_t ;
struct TYPE_5__ {int instr_ex_cnt; int data_ex_cnt; int vfp_cnt; int unaligned_cnt; int undef_ex_cnt; int timer_cnt; int ipi_cnt; int irq_ex_cnt; } ;
struct TYPE_7__ {TYPE_1__ cpu_stat; } ;
typedef TYPE_3__ cpu_data_t ;
struct TYPE_8__ {TYPE_3__* cpu_data_vaddr; } ;
struct TYPE_6__ {int instr_ex_cnt; int data_ex_cnt; int vfp_shortv_cnt; int vfp_cnt; int unaligned_cnt; int undef_ex_cnt; int timer_cnt; int ipi_cnt; int irq_ex_cnt; } ;


 TYPE_4__* CpuDataEntries ;
 int KERN_FAILURE ;
 int KERN_SUCCESS ;

 unsigned int PROCESSOR_CPU_STAT_COUNT ;

kern_return_t
cpu_info(processor_flavor_t flavor,
  int slot_num,
  processor_info_t info,
  unsigned int *count)
{
 switch (flavor) {
 case 128:
  {
   processor_cpu_stat_t cpu_stat;
   cpu_data_t *cpu_data_ptr = CpuDataEntries[slot_num].cpu_data_vaddr;

   if (*count < PROCESSOR_CPU_STAT_COUNT)
    return (KERN_FAILURE);

   cpu_stat = (processor_cpu_stat_t) info;
   cpu_stat->irq_ex_cnt = cpu_data_ptr->cpu_stat.irq_ex_cnt;
   cpu_stat->ipi_cnt = cpu_data_ptr->cpu_stat.ipi_cnt;
   cpu_stat->timer_cnt = cpu_data_ptr->cpu_stat.timer_cnt;
   cpu_stat->undef_ex_cnt = cpu_data_ptr->cpu_stat.undef_ex_cnt;
   cpu_stat->unaligned_cnt = cpu_data_ptr->cpu_stat.unaligned_cnt;
   cpu_stat->vfp_cnt = cpu_data_ptr->cpu_stat.vfp_cnt;
   cpu_stat->vfp_shortv_cnt = 0;
   cpu_stat->data_ex_cnt = cpu_data_ptr->cpu_stat.data_ex_cnt;
   cpu_stat->instr_ex_cnt = cpu_data_ptr->cpu_stat.instr_ex_cnt;

   *count = PROCESSOR_CPU_STAT_COUNT;

   return (KERN_SUCCESS);
  }

 default:
  return (KERN_FAILURE);
 }
}
