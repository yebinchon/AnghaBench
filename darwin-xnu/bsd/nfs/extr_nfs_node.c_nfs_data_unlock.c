
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nfsnode_t ;


 int nfs_data_unlock_internal (int ,int) ;

void
nfs_data_unlock(nfsnode_t np)
{
 nfs_data_unlock_internal(np, 1);
}
