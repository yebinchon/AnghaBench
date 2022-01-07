
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* processor_t ;
struct TYPE_3__ {int current_perfctl_class; int current_recommended_pset_type; int current_sfi_class; int current_pri; } ;


 int IDLEPRI ;
 int PERFCONTROL_CLASS_IDLE ;
 int PSET_SMP ;
 int SFI_CLASS_KERNEL ;

void
processor_state_update_idle(processor_t processor)
{
    processor->current_pri = IDLEPRI;
    processor->current_sfi_class = SFI_CLASS_KERNEL;
    processor->current_recommended_pset_type = PSET_SMP;
    processor->current_perfctl_class = PERFCONTROL_CLASS_IDLE;
}
