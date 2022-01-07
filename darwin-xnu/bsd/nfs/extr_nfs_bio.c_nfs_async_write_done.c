
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsmount {scalar_t__ nm_asyncwrites; int nm_lock; } ;


 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 scalar_t__ nfs_max_async_writes ;
 int wakeup (scalar_t__*) ;

void
nfs_async_write_done(struct nfsmount *nmp)
{
 if (nmp->nm_asyncwrites <= 0)
  return;
 lck_mtx_lock(&nmp->nm_lock);
 if (nmp->nm_asyncwrites-- >= nfs_max_async_writes)
  wakeup(&nmp->nm_asyncwrites);
 lck_mtx_unlock(&nmp->nm_lock);
}
