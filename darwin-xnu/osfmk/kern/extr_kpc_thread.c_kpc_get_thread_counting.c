
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int kpc_thread_classes ;
 int kpc_thread_lock ;
 int kpc_threads_counting ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;

uint32_t
kpc_get_thread_counting(void)
{
 uint32_t kpc_thread_classes_tmp;
 int kpc_threads_counting_tmp;


 lck_mtx_lock(&kpc_thread_lock);

 kpc_thread_classes_tmp = kpc_thread_classes;
 kpc_threads_counting_tmp = kpc_threads_counting;

 lck_mtx_unlock(&kpc_thread_lock);

 if( kpc_threads_counting_tmp )
  return kpc_thread_classes_tmp;
 else
  return 0;
}
