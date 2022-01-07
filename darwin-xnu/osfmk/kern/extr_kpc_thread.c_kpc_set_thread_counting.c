
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_3__ {int kperf_flags; int kpc_buf; } ;


 int FALSE ;
 scalar_t__ KPC_MAX_COUNTERS ;
 int TRUE ;
 int T_KPC_ALLOC ;
 int act_set_kperf (TYPE_1__*) ;
 int assert (int) ;
 TYPE_1__* current_thread () ;
 scalar_t__ kpc_get_counter_count (scalar_t__) ;
 int kpc_off_cpu_update () ;
 scalar_t__ kpc_thread_classes ;
 scalar_t__ kpc_thread_classes_count ;
 int kpc_thread_lock ;
 int kpc_threads_counting ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;

int
kpc_set_thread_counting(uint32_t classes)
{
 uint32_t count;

 lck_mtx_lock(&kpc_thread_lock);

 count = kpc_get_counter_count(classes);

 if( (classes == 0)
     || (count == 0) )
 {

  kpc_threads_counting = FALSE;
 }
 else
 {

  kpc_thread_classes = classes;


  kpc_thread_classes_count = count;
  assert(kpc_thread_classes_count <= KPC_MAX_COUNTERS);


  kpc_threads_counting = TRUE;


  if( !current_thread()->kpc_buf )
  {
   current_thread()->kperf_flags |= T_KPC_ALLOC;
   act_set_kperf(current_thread());
  }
 }

    kpc_off_cpu_update();
 lck_mtx_unlock(&kpc_thread_lock);

 return 0;
}
