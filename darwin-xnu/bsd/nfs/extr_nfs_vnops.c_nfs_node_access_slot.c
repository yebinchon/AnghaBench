
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uid_t ;
typedef TYPE_1__* nfsnode_t ;
struct TYPE_3__ {scalar_t__* n_accessuid; int* n_access; } ;


 int NFS_ACCESS_CACHE_SIZE ;

int
nfs_node_access_slot(nfsnode_t np, uid_t uid, int add)
{
 int slot;

 for (slot=0; slot < NFS_ACCESS_CACHE_SIZE; slot++)
  if (np->n_accessuid[slot] == uid)
   break;
 if (slot == NFS_ACCESS_CACHE_SIZE) {
  if (!add)
   return (-1);
  slot = np->n_access[NFS_ACCESS_CACHE_SIZE];
  np->n_access[NFS_ACCESS_CACHE_SIZE] = (slot + 1) % NFS_ACCESS_CACHE_SIZE;
 }
 return (slot);
}
