
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ nfsnode_t ;


 int nfs_node_clear_busy (scalar_t__) ;

void
nfs_node_clear_busy2(nfsnode_t np1, nfsnode_t np2)
{
 nfs_node_clear_busy(np1);
 if (np1 != np2)
  nfs_node_clear_busy(np2);
}
