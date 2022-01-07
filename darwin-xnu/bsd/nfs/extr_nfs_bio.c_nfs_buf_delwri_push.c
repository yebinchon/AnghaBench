
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ KERN_SUCCESS ;
 scalar_t__ TAILQ_EMPTY (int *) ;
 scalar_t__ kernel_thread_start (int ,int *,scalar_t__*) ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 int nfs_buf_delwri_service () ;
 int nfs_buf_delwri_thread ;
 int nfs_buf_mutex ;
 int nfsbufdelwri ;
 scalar_t__ nfsbufdelwrithd ;
 int thread_deallocate (scalar_t__) ;
 int wakeup (scalar_t__*) ;

void
nfs_buf_delwri_push(int locked)
{
 if (TAILQ_EMPTY(&nfsbufdelwri))
  return;
 if (!locked)
  lck_mtx_lock(nfs_buf_mutex);

 if (nfsbufdelwrithd)
  wakeup(&nfsbufdelwrithd);
 else if (kernel_thread_start(nfs_buf_delwri_thread, ((void*)0), &nfsbufdelwrithd) == KERN_SUCCESS)
  thread_deallocate(nfsbufdelwrithd);

 if (!nfsbufdelwrithd)
  nfs_buf_delwri_service();
 if (!locked)
  lck_mtx_unlock(nfs_buf_mutex);
}
