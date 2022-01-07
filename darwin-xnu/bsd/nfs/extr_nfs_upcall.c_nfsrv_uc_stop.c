
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t int32_t ;
struct TYPE_3__ {scalar_t__ ucq_thd; int ucq_lock; } ;


 int DPRINT (char*) ;
 int PSOCK ;
 scalar_t__ THREAD_NULL ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 int msleep (size_t*,int ,int ,char*,int *) ;
 TYPE_1__* nfsrv_uc_queue_tbl ;
 int nfsrv_uc_shutdown ;
 int nfsrv_uc_shutdown_lock ;
 size_t nfsrv_uc_thread_count ;
 int thread_deallocate (scalar_t__) ;
 int wakeup (TYPE_1__*) ;

__attribute__((used)) static void
nfsrv_uc_stop(void)
{
 int32_t i;
 int32_t thread_count = nfsrv_uc_thread_count;

 DPRINT("Entering nfsrv_uc_stop\n");


 nfsrv_uc_shutdown = 1;
 for (i = 0; i < thread_count; i++) {
  lck_mtx_lock(nfsrv_uc_queue_tbl[i].ucq_lock);
  wakeup(&nfsrv_uc_queue_tbl[i]);
  lck_mtx_unlock(nfsrv_uc_queue_tbl[i].ucq_lock);
 }


 lck_mtx_lock(nfsrv_uc_shutdown_lock);
 while (nfsrv_uc_thread_count > 0)
  msleep(&nfsrv_uc_thread_count, nfsrv_uc_shutdown_lock, PSOCK, "nfsd_upcall_shutdown_stop", ((void*)0));


 for (i = 0; i < nfsrv_uc_thread_count; i++) {
  if (nfsrv_uc_queue_tbl[i].ucq_thd != THREAD_NULL)
   thread_deallocate(nfsrv_uc_queue_tbl[i].ucq_thd);
  nfsrv_uc_queue_tbl[i].ucq_thd = THREAD_NULL;
 }


 nfsrv_uc_shutdown = 0;
 lck_mtx_unlock(nfsrv_uc_shutdown_lock);
}
