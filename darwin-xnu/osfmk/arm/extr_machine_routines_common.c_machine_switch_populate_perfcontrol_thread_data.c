
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
typedef TYPE_1__* thread_t ;
struct perfcontrol_thread_data {int perfctl_state; int scheduling_latency_at_same_basepri; int thread_id; scalar_t__ energy_estimate_nj; int perfctl_class; } ;
struct TYPE_5__ {int thread_id; } ;


 int FIND_PERFCONTROL_STATE (TYPE_1__*) ;
 int bzero (struct perfcontrol_thread_data*,int) ;
 int thread_get_perfcontrol_class (TYPE_1__*) ;

__attribute__((used)) static void
machine_switch_populate_perfcontrol_thread_data(struct perfcontrol_thread_data *data,
      thread_t thread,
      uint64_t same_pri_latency)
{
 bzero(data, sizeof(struct perfcontrol_thread_data));
 data->perfctl_class = thread_get_perfcontrol_class(thread);
 data->energy_estimate_nj = 0;
 data->thread_id = thread->thread_id;
 data->scheduling_latency_at_same_basepri = same_pri_latency;
 data->perfctl_state = FIND_PERFCONTROL_STATE(thread);
}
