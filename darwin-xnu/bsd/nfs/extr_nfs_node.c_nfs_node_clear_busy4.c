
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nfsnode_t ;


 int nfs_node_clear_busy (int ) ;
 int nfs_node_sort4 (int ,int ,int ,int ,int *,int*) ;

void
nfs_node_clear_busy4(nfsnode_t np1, nfsnode_t np2, nfsnode_t np3, nfsnode_t np4)
{
 nfsnode_t list[4];
 int lcnt;

 nfs_node_sort4(np1, np2, np3, np4, list, &lcnt);
 while (--lcnt >= 0)
  nfs_node_clear_busy(list[lcnt]);
}
