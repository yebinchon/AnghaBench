
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef size_t uint32_t ;
typedef TYPE_1__* thread_t ;
struct TYPE_8__ {scalar_t__** cpu_kpc_buf; } ;
typedef TYPE_2__ cpu_data_t ;
struct TYPE_9__ {int kperf_flags; int kpc_buf; } ;
struct TYPE_7__ {int * kpc_buf; } ;


 int FALSE ;
 int T_KPC_ALLOC ;
 int act_set_kperf (TYPE_4__*) ;
 TYPE_2__* current_cpu_datap () ;
 TYPE_4__* current_thread () ;
 int kpc_get_cpu_counters (int ,int ,int *,scalar_t__*) ;
 int kpc_thread_classes ;
 size_t kpc_thread_classes_count ;

__attribute__((used)) static void
kpc_update_thread_counters( thread_t thread )
{
 uint32_t i;
 uint64_t *tmp = ((void*)0);
 cpu_data_t *cpu = ((void*)0);

 cpu = current_cpu_datap();


 kpc_get_cpu_counters( FALSE, kpc_thread_classes,
                       ((void*)0), cpu->cpu_kpc_buf[1] );


 if( thread->kpc_buf )
  for( i = 0; i < kpc_thread_classes_count; i++ )
   thread->kpc_buf[i] += cpu->cpu_kpc_buf[1][i] - cpu->cpu_kpc_buf[0][i];


 if( !current_thread()->kpc_buf )
 {
  current_thread()->kperf_flags |= T_KPC_ALLOC;
  act_set_kperf(current_thread());
 }


 tmp = cpu->cpu_kpc_buf[1];
 cpu->cpu_kpc_buf[1] = cpu->cpu_kpc_buf[0];
 cpu->cpu_kpc_buf[0] = tmp;
}
