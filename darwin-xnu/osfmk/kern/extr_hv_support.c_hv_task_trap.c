
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int kern_return_t ;


 int HV_TASK_TRAP ;
 int HV_TRAP_DISPATCH (int ,int ,int ,int ) ;
 int hv_get_task_target () ;

kern_return_t hv_task_trap(uint64_t index, uint64_t arg) {
 return HV_TRAP_DISPATCH(HV_TASK_TRAP, index, hv_get_task_target(), arg);
}
