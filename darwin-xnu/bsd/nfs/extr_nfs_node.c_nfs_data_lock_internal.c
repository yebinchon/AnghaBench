
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* nfsnode_t ;
struct TYPE_6__ {int n_datalockowner; int n_flag; int n_datalock; } ;


 int FSDBG_BOT (int,TYPE_1__*,int,int ,int ) ;
 int FSDBG_TOP (int,TYPE_1__*,int,int ,int ) ;
 scalar_t__ ISSET (int ,int ) ;
 int NFS_DATA_LOCK_SHARED ;
 int NUPDATESIZE ;
 int current_thread () ;
 int lck_rw_lock_exclusive (int *) ;
 int lck_rw_lock_shared (int *) ;
 int nfs_data_update_size (TYPE_1__*,int) ;

void
nfs_data_lock_internal(nfsnode_t np, int locktype, int updatesize)
{
 FSDBG_TOP(270, np, locktype, np->n_datalockowner, 0);
 if (locktype == NFS_DATA_LOCK_SHARED) {
  if (updatesize && ISSET(np->n_flag, NUPDATESIZE))
   nfs_data_update_size(np, 0);
  lck_rw_lock_shared(&np->n_datalock);
 } else {
  lck_rw_lock_exclusive(&np->n_datalock);
  np->n_datalockowner = current_thread();
  if (updatesize && ISSET(np->n_flag, NUPDATESIZE))
   nfs_data_update_size(np, 1);
 }
 FSDBG_BOT(270, np, locktype, np->n_datalockowner, 0);
}
