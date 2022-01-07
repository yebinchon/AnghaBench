
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_t ;
typedef int nfsnode_t ;


 int nfs_node_clear_busy (int ) ;
 int nfs_node_set_busy (int ,int ) ;
 int nfs_node_sort4 (int ,int ,int ,int ,int *,int*) ;

int
nfs_node_set_busy4(nfsnode_t np1, nfsnode_t np2, nfsnode_t np3, nfsnode_t np4, thread_t thd)
{
 nfsnode_t list[4];
 int i, lcnt, error;

 nfs_node_sort4(np1, np2, np3, np4, list, &lcnt);


 for (i = 0; i < lcnt; ++i)
  if ((error = nfs_node_set_busy(list[i], thd))) {

   while (--i >= 0)
    nfs_node_clear_busy(list[i]);
   return (error);
  }
 return (0);
}
