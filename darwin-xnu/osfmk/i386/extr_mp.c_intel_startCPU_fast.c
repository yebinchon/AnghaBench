
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ kern_return_t ;
struct TYPE_2__ {scalar_t__ cpu_running; } ;


 int DBG_FUNC_END ;
 int DBG_FUNC_START ;
 int KERNEL_DEBUG_CONSTANT (int,int,scalar_t__,int ,int ,int ) ;
 scalar_t__ KERN_FAILURE ;
 scalar_t__ KERN_SUCCESS ;
 int TRACE_MP_CPU_FAST_START ;
 TYPE_1__* cpu_datap (int) ;
 int mp_disable_preemption () ;
 int mp_enable_preemption () ;
 int mp_wait_for_cpu_up (int,int,int) ;
 scalar_t__ pmCPUExitHalt (int) ;

kern_return_t
intel_startCPU_fast(int slot_num)
{
 kern_return_t rc;




 rc = pmCPUExitHalt(slot_num);
 if (rc != KERN_SUCCESS)



  return(rc);

 KERNEL_DEBUG_CONSTANT(
  TRACE_MP_CPU_FAST_START | DBG_FUNC_START,
  slot_num, 0, 0, 0, 0);




 mp_disable_preemption();







 mp_wait_for_cpu_up(slot_num, 30000, 1);
 mp_enable_preemption();

 KERNEL_DEBUG_CONSTANT(
  TRACE_MP_CPU_FAST_START | DBG_FUNC_END,
  slot_num, cpu_datap(slot_num)->cpu_running, 0, 0, 0);





 if (cpu_datap(slot_num)->cpu_running)
  return(KERN_SUCCESS);
 else
  return(KERN_FAILURE);
}
