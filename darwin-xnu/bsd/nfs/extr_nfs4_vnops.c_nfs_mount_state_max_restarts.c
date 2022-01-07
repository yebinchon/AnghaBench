
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint ;
struct TYPE_2__ {int nfsa_lease; } ;
struct nfsmount {TYPE_1__ nm_fsattr; } ;


 int MAX (int ,int) ;

uint
nfs_mount_state_max_restarts(struct nfsmount *nmp)
{
 return (MAX(nmp->nm_fsattr.nfsa_lease, 60));
}
