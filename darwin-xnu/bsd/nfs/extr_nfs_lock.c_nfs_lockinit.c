
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LCK_ATTR_NULL ;
 int LCK_GRP_ATTR_NULL ;
 int TAILQ_INIT (int *) ;
 int lck_grp_alloc_init (char*,int ) ;
 int lck_mtx_alloc_init (int ,int ) ;
 int nfs_lock_lck_grp ;
 int nfs_lock_mutex ;
 int nfs_lockd_mount_list ;
 int nfs_pendlockq ;

void
nfs_lockinit(void)
{
 TAILQ_INIT(&nfs_pendlockq);
 TAILQ_INIT(&nfs_lockd_mount_list);

 nfs_lock_lck_grp = lck_grp_alloc_init("nfs_lock", LCK_GRP_ATTR_NULL);
 nfs_lock_mutex = lck_mtx_alloc_init(nfs_lock_lck_grp, LCK_ATTR_NULL);
}
