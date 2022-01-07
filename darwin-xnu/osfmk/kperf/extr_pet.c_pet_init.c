
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_t ;
typedef scalar_t__ kern_return_t ;


 int BUF_INFO (int ,int ) ;
 scalar_t__ KERN_SUCCESS ;
 int PERF_PET_THREAD ;
 scalar_t__ TRUE ;
 int assert (int ) ;
 scalar_t__ kernel_thread_start (int ,int *,int *) ;
 int kperf_lck_grp ;
 int lck_mtx_alloc_init (int *,int *) ;
 int lck_mtx_free (int ,int *) ;
 scalar_t__ pet_initted ;
 int pet_lock ;
 int pet_thread_loop ;
 int thread_deallocate (int ) ;
 int thread_set_thread_name (int ,char*) ;

__attribute__((used)) static kern_return_t
pet_init(void)
{
 if (pet_initted) {
  return KERN_SUCCESS;
 }


 pet_lock = lck_mtx_alloc_init(&kperf_lck_grp, ((void*)0));
 assert(pet_lock);



 BUF_INFO(PERF_PET_THREAD, 0);
 thread_t t;
 kern_return_t kr = kernel_thread_start(pet_thread_loop, ((void*)0), &t);
 if (kr != KERN_SUCCESS) {
  lck_mtx_free(pet_lock, &kperf_lck_grp);
  return kr;
 }

 thread_set_thread_name(t, "kperf sampling");

 thread_deallocate(t);

 pet_initted = TRUE;

 return KERN_SUCCESS;
}
