
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nfsnode_t ;


 int nfs_node_lock_internal (int ,int ) ;

int
nfs_node_lock(nfsnode_t np)
{
 return nfs_node_lock_internal(np, 0);
}
