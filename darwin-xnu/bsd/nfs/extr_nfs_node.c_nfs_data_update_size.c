
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef int off_t ;
typedef TYPE_1__* nfsnode_t ;
struct TYPE_10__ {scalar_t__ n_newsize; scalar_t__ n_size; int n_flag; } ;


 int CLR (int ,int ) ;
 int FSDBG_BOT (int,TYPE_1__*,int ,scalar_t__,scalar_t__) ;
 int FSDBG_TOP (int,TYPE_1__*,int ,scalar_t__,scalar_t__) ;
 int ISSET (int ,int ) ;
 int NFSTOV (TYPE_1__*) ;
 int NFS_DATA_LOCK_EXCLUSIVE ;
 int NNEEDINVALIDATE ;
 int NUPDATESIZE ;
 int SET (int ,int ) ;
 int nfs_data_lock (TYPE_1__*,int ) ;
 int nfs_data_unlock (TYPE_1__*) ;
 int nfs_node_lock (TYPE_1__*) ;
 int nfs_node_unlock (TYPE_1__*) ;
 int ubc_setsize (int ,int ) ;

void
nfs_data_update_size(nfsnode_t np, int datalocked)
{
 int error;

 FSDBG_TOP(272, np, np->n_flag, np->n_size, np->n_newsize);
 if (!datalocked) {
  nfs_data_lock(np, NFS_DATA_LOCK_EXCLUSIVE);

  nfs_data_unlock(np);
  FSDBG_BOT(272, np, np->n_flag, np->n_size, np->n_newsize);
  return;
 }
 error = nfs_node_lock(np);
 if (error || !ISSET(np->n_flag, NUPDATESIZE)) {
  if (!error)
   nfs_node_unlock(np);
  FSDBG_BOT(272, np, np->n_flag, np->n_size, np->n_newsize);
  return;
 }
 CLR(np->n_flag, NUPDATESIZE);
 np->n_size = np->n_newsize;

 SET(np->n_flag, NNEEDINVALIDATE);
 nfs_node_unlock(np);
 ubc_setsize(NFSTOV(np), (off_t)np->n_size);
 FSDBG_BOT(272, np, np->n_flag, np->n_size, np->n_newsize);
}
