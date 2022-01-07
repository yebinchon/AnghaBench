
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct kpc_get_counters_remote {int nb_counters; int * buf; int buf_stride; int classes; } ;
struct TYPE_2__ {int cpu_id; } ;


 int ASYNC ;
 int CPUMASK_ALL ;
 int FALSE ;
 int assert (int *) ;
 TYPE_1__* current_processor () ;
 int kpc_get_counter_count (int ) ;
 int kpc_get_curcpu_counters_mp_call ;
 int ml_set_interrupts_enabled (int) ;
 int mp_cpus_call (int ,int ,int ,struct kpc_get_counters_remote*) ;

int
kpc_get_all_cpus_counters(uint32_t classes, int *curcpu, uint64_t *buf)
{
 int enabled = 0;

 struct kpc_get_counters_remote hdl = {
  .classes = classes, .nb_counters = 0,
  .buf_stride = kpc_get_counter_count(classes), .buf = buf
 };

 assert(buf);

 enabled = ml_set_interrupts_enabled(FALSE);

 if (curcpu)
  *curcpu = current_processor()->cpu_id;
 mp_cpus_call(CPUMASK_ALL, ASYNC, kpc_get_curcpu_counters_mp_call, &hdl);

 ml_set_interrupts_enabled(enabled);

 return hdl.nb_counters;
}
