
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ nfsnode_t ;


 int nfs_node_unlock (scalar_t__) ;

void
nfs_node_unlock2(nfsnode_t np1, nfsnode_t np2)
{
 nfs_node_unlock(np1);
 if (np1 != np2)
  nfs_node_unlock(np2);
}
