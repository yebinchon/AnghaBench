
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M_NFSNODE ;
 int desiredvnodes ;
 scalar_t__ hashinit (int ,int ,int *) ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 int nfs_node_hash_mutex ;
 int nfsnodehash ;
 scalar_t__ nfsnodehashtbl ;

void
nfs_nhinit_finish(void)
{
 lck_mtx_lock(nfs_node_hash_mutex);
 if (!nfsnodehashtbl)
  nfsnodehashtbl = hashinit(desiredvnodes, M_NFSNODE, &nfsnodehash);
 lck_mtx_unlock(nfs_node_hash_mutex);
}
