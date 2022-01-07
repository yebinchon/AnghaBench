
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nfsnode_t ;


 int nfs_data_lock_internal (int ,int,int) ;

void
nfs_data_lock(nfsnode_t np, int locktype)
{
 nfs_data_lock_internal(np, locktype, 1);
}
