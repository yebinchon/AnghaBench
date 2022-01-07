
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct kpc_get_counters_remote {int nb_counters; int buf_stride; int * buf; int classes; } ;
struct TYPE_2__ {int cpu_id; } ;


 int FALSE ;
 int TRUE ;
 int assert (int ) ;
 int cpu_broadcast_xcall (int *,int ,int ,struct kpc_get_counters_remote*) ;
 TYPE_1__* current_processor () ;
 int kpc_get_counter_count (int ) ;
 int kpc_get_curcpu_counters_xcall ;
 int kpc_xread_sync ;
 int ml_set_interrupts_enabled (int) ;

int
kpc_get_all_cpus_counters(uint32_t classes, int *curcpu, uint64_t *buf)
{
 assert(buf != ((void*)0));

 int enabled = ml_set_interrupts_enabled(FALSE);


 if (curcpu) {
  *curcpu = current_processor()->cpu_id;
 }

 struct kpc_get_counters_remote hdl = {
  .classes = classes,
  .nb_counters = 0,
  .buf = buf,
  .buf_stride = kpc_get_counter_count(classes)
 };

 cpu_broadcast_xcall(&kpc_xread_sync, TRUE, kpc_get_curcpu_counters_xcall, &hdl);
 int offset = hdl.nb_counters;

 (void)ml_set_interrupts_enabled(enabled);

 return offset;
}
