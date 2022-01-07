
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsmount {int dummy; } ;


 int TAILQ_INSERT_HEAD (int *,struct nfsmount*,int ) ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 int nfs_lock_mutex ;
 int nfs_lockd_mount_list ;
 int nfs_lockd_mounts ;
 int nm_ldlink ;

void
nfs_lockd_mount_register(struct nfsmount *nmp)
{
 lck_mtx_lock(nfs_lock_mutex);
 TAILQ_INSERT_HEAD(&nfs_lockd_mount_list, nmp, nm_ldlink);
 nfs_lockd_mounts++;
 lck_mtx_unlock(nfs_lock_mutex);
}
