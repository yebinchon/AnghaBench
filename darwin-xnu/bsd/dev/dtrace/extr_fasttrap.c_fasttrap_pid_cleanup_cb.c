
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct timespec {int member_0; int member_1; } ;


 int FASTTRAP_CLEANUP_PROVIDER ;
 int FASTTRAP_CLEANUP_TRACEPOINT ;
 int PRIBIO ;
 int atomic_and_32 (int *,int ) ;
 int fasttrap_cleanup_mtx ;
 int fasttrap_cleanup_work ;
 int fasttrap_pid_cleanup_compute_priority () ;
 unsigned int fasttrap_pid_cleanup_providers () ;
 int fasttrap_tracepoint_cleanup () ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int msleep (void (*) (),int *,int ,char*,struct timespec*) ;

__attribute__((used)) __attribute__((noreturn))
static void
fasttrap_pid_cleanup_cb(void)
{
 uint32_t work = 0;
 lck_mtx_lock(&fasttrap_cleanup_mtx);
 msleep(&fasttrap_pid_cleanup_cb, &fasttrap_cleanup_mtx, PRIBIO, "fasttrap_pid_cleanup_cb", ((void*)0));
 while (1) {
  unsigned int later = 0;

  work = atomic_and_32(&fasttrap_cleanup_work, 0);
  lck_mtx_unlock(&fasttrap_cleanup_mtx);
  if (work & FASTTRAP_CLEANUP_PROVIDER) {
   later = fasttrap_pid_cleanup_providers();
  }
  if (work & FASTTRAP_CLEANUP_TRACEPOINT) {
   fasttrap_tracepoint_cleanup();
  }
  lck_mtx_lock(&fasttrap_cleanup_mtx);

  fasttrap_pid_cleanup_compute_priority();
  if (!fasttrap_cleanup_work) {
   if (later > 0) {
    struct timespec t = {1, 0};
    msleep(&fasttrap_pid_cleanup_cb, &fasttrap_cleanup_mtx, PRIBIO, "fasttrap_pid_cleanup_cb", &t);
   }
   else
    msleep(&fasttrap_pid_cleanup_cb, &fasttrap_cleanup_mtx, PRIBIO, "fasttrap_pid_cleanup_cb", ((void*)0));
  }
 }

}
