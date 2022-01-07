
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int atomic_or_32 (int *,int ) ;
 int fasttrap_cleanup_mtx ;
 int fasttrap_cleanup_work ;
 int fasttrap_pid_cleanup_cb ;
 int fasttrap_pid_cleanup_compute_priority () ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int wakeup (int *) ;

__attribute__((used)) static void
fasttrap_pid_cleanup(uint32_t work)
{
 lck_mtx_lock(&fasttrap_cleanup_mtx);
 atomic_or_32(&fasttrap_cleanup_work, work);
 fasttrap_pid_cleanup_compute_priority();
 wakeup(&fasttrap_pid_cleanup_cb);
 lck_mtx_unlock(&fasttrap_cleanup_mtx);
}
