
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ nfsnode_t ;


 int nfs_node_lock (scalar_t__) ;
 int nfs_node_unlock (scalar_t__) ;

int
nfs_node_lock2(nfsnode_t np1, nfsnode_t np2)
{
 nfsnode_t first, second;
 int error;

 first = (np1 > np2) ? np1 : np2;
 second = (np1 > np2) ? np2 : np1;
 if ((error = nfs_node_lock(first)))
  return (error);
 if (np1 == np2)
  return (error);
 if ((error = nfs_node_lock(second)))
  nfs_node_unlock(first);
 return (error);
}
