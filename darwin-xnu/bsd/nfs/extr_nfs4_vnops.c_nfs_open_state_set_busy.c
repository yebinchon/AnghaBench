
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int thread_t ;
struct timespec {int member_0; int member_1; } ;
struct nfsmount {int dummy; } ;
typedef TYPE_1__* nfsnode_t ;
struct TYPE_4__ {int n_openflags; int n_openlock; } ;


 int ENXIO ;
 int INTR ;
 struct nfsmount* NFSTONMP (TYPE_1__*) ;
 scalar_t__ NMFLAG (struct nfsmount*,int ) ;
 int N_OPENBUSY ;
 int N_OPENWANT ;
 int PCATCH ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int msleep (int*,int *,int,char*,struct timespec*) ;
 scalar_t__ nfs_mount_gone (struct nfsmount*) ;
 int nfs_sigintr (struct nfsmount*,int *,int ,int ) ;

int
nfs_open_state_set_busy(nfsnode_t np, thread_t thd)
{
 struct nfsmount *nmp;
 struct timespec ts = {2, 0};
 int error = 0, slpflag;

 nmp = NFSTONMP(np);
 if (nfs_mount_gone(nmp))
  return (ENXIO);
 slpflag = (NMFLAG(nmp, INTR) && thd) ? PCATCH : 0;

 lck_mtx_lock(&np->n_openlock);
 while (np->n_openflags & N_OPENBUSY) {
  if ((error = nfs_sigintr(nmp, ((void*)0), thd, 0)))
   break;
  np->n_openflags |= N_OPENWANT;
  msleep(&np->n_openflags, &np->n_openlock, slpflag, "nfs_open_state_set_busy", &ts);
  slpflag = 0;
 }
 if (!error)
  np->n_openflags |= N_OPENBUSY;
 lck_mtx_unlock(&np->n_openlock);

 return (error);
}
