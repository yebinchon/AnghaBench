
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
typedef TYPE_2__* processor_t ;
struct TYPE_8__ {int current_perfctl_class; int current_recommended_pset_type; int current_sfi_class; int current_pri; } ;
struct TYPE_7__ {int sfi_class; int sched_pri; } ;


 int recommended_pset_type (TYPE_1__*) ;
 int thread_get_perfcontrol_class (TYPE_1__*) ;

void
processor_state_update_from_thread(processor_t processor, thread_t thread)
{
    processor->current_pri = thread->sched_pri;
    processor->current_sfi_class = thread->sfi_class;
    processor->current_recommended_pset_type = recommended_pset_type(thread);
    processor->current_perfctl_class = thread_get_perfcontrol_class(thread);
}
