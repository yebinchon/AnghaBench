
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sfi_class_id_t ;
typedef int pset_cluster_type_t ;
typedef TYPE_1__* processor_t ;
typedef int perfcontrol_class_t ;
struct TYPE_3__ {int current_pri; int current_perfctl_class; int current_recommended_pset_type; int current_sfi_class; } ;



void
processor_state_update_explicit(processor_t processor, int pri, sfi_class_id_t sfi_class,
 pset_cluster_type_t pset_type, perfcontrol_class_t perfctl_class)
{
    processor->current_pri = pri;
    processor->current_sfi_class = sfi_class;
    processor->current_recommended_pset_type = pset_type;
    processor->current_perfctl_class = perfctl_class;
}
