
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct vnop_monitor_args {int a_vp; } ;
struct timespec {int member_0; int member_1; } ;
struct nfsmount {int nm_lock; int nm_monlist; } ;
typedef TYPE_2__* nfsnode_t ;
struct TYPE_6__ {scalar_t__ le_next; } ;
struct TYPE_7__ {int n_mflag; TYPE_1__ n_monlink; } ;


 int ENXIO ;
 int LIST_INSERT_HEAD (int *,TYPE_2__*,int ) ;
 int LIST_REMOVE (TYPE_2__*,int ) ;
 scalar_t__ NFSNOLIST ;
 int NMMONSCANINPROG ;
 int NMMONSCANWANT ;
 scalar_t__ PZERO ;
 TYPE_2__* VTONFS (int ) ;
 struct nfsmount* VTONMP (int ) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int msleep (int*,int *,scalar_t__,char*,struct timespec*) ;
 int n_monlink ;
 scalar_t__ nfs_mount_gone (struct nfsmount*) ;
 int nfs_mount_sock_thread_wake (struct nfsmount*) ;
 scalar_t__ vnode_ismonitored (int ) ;

int
nfs_vnop_monitor(
 struct vnop_monitor_args *ap)







{
 nfsnode_t np = VTONFS(ap->a_vp);
 struct nfsmount *nmp = VTONMP(ap->a_vp);
 int error = 0;

 if (nfs_mount_gone(nmp))
  return (ENXIO);


 lck_mtx_lock(&nmp->nm_lock);
 if (vnode_ismonitored(ap->a_vp)) {

  if (np->n_monlink.le_next == NFSNOLIST) {
   LIST_INSERT_HEAD(&nmp->nm_monlist, np, n_monlink);
   nfs_mount_sock_thread_wake(nmp);
  }
 } else {


  while (np->n_mflag & NMMONSCANINPROG) {
   struct timespec ts = { 1, 0 };
   np->n_mflag |= NMMONSCANWANT;
   msleep(&np->n_mflag, &nmp->nm_lock, PZERO-1, "nfswaitmonscan", &ts);
  }
  if (np->n_monlink.le_next != NFSNOLIST) {
   LIST_REMOVE(np, n_monlink);
   np->n_monlink.le_next = NFSNOLIST;
  }
 }
 lck_mtx_unlock(&nmp->nm_lock);

 return (error);
}
