
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int member_0; int member_1; } ;
struct nfsmount {scalar_t__ nm_asyncwrites; int nm_lock; } ;


 int INTR ;
 scalar_t__ NMFLAG (struct nfsmount*,int ) ;
 int PCATCH ;
 int PZERO ;
 int current_thread () ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int msleep (scalar_t__*,int *,int,char*,struct timespec*) ;
 scalar_t__ nfs_max_async_writes ;
 int nfs_sigintr (struct nfsmount*,int *,int ,int) ;

int
nfs_async_write_start(struct nfsmount *nmp)
{
 int error = 0, slpflag = NMFLAG(nmp, INTR) ? PCATCH : 0;
 struct timespec ts = {1, 0};

 if (nfs_max_async_writes <= 0)
  return (0);
 lck_mtx_lock(&nmp->nm_lock);
 while ((nfs_max_async_writes > 0) && (nmp->nm_asyncwrites >= nfs_max_async_writes)) {
  if ((error = nfs_sigintr(nmp, ((void*)0), current_thread(), 1)))
   break;
  msleep(&nmp->nm_asyncwrites, &nmp->nm_lock, slpflag|(PZERO-1), "nfsasyncwrites", &ts);
  slpflag = 0;
 }
 if (!error)
  nmp->nm_asyncwrites++;
 lck_mtx_unlock(&nmp->nm_lock);
 return (error);
}
