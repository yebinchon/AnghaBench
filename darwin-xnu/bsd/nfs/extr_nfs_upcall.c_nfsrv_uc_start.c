
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_2__ {int ucq_thd; } ;


 int DPRINT (char*) ;
 scalar_t__ NFS_UC_HASH_SZ ;
 int PSOCK ;
 int kernel_thread_start (int ,void*,int *) ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 int msleep (size_t*,int ,int ,char*,int *) ;
 unsigned long long nfsrv_uc_queue_count ;
 unsigned long long nfsrv_uc_queue_max_seen ;
 TYPE_1__* nfsrv_uc_queue_tbl ;
 scalar_t__ nfsrv_uc_shutdown ;
 int nfsrv_uc_shutdown_lock ;
 int nfsrv_uc_thread ;
 size_t nfsrv_uc_thread_count ;
 int nfsrv_uc_use_proxy ;
 int printf (char*,...) ;

__attribute__((used)) static void
nfsrv_uc_start(void)
{
 int32_t i;
 int error;





 DPRINT("nfsrv_uc_start\n");


 lck_mtx_lock(nfsrv_uc_shutdown_lock);
 while (nfsrv_uc_shutdown || nfsrv_uc_thread_count > 0)
  msleep(&nfsrv_uc_thread_count, nfsrv_uc_shutdown_lock, PSOCK, "nfsd_upcall_shutdown_wait", ((void*)0));


 for (i = 0; i < NFS_UC_HASH_SZ; i++) {
  error = kernel_thread_start(nfsrv_uc_thread, (void *)(uintptr_t)i, &nfsrv_uc_queue_tbl[nfsrv_uc_thread_count].ucq_thd);
  if (!error) {
   nfsrv_uc_thread_count++;
  } else {
   printf("nfsd: Could not start nfsrv_uc_thread: %d\n", error);
  }
 }
 if (nfsrv_uc_thread_count == 0) {
  printf("nfsd: Could not start nfsd proxy up-call service. Falling back\n");
  goto out;
 }

out:




 lck_mtx_unlock(nfsrv_uc_shutdown_lock);
}
