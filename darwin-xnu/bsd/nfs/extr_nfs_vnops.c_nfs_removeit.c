
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfsmount {TYPE_1__* nm_funcs; } ;
struct nfs_sillyrename {int nsr_cred; int nsr_namlen; int nsr_name; int nsr_dnp; } ;
struct TYPE_2__ {int (* nf_remove_rpc ) (int ,int ,int ,int *,int ) ;} ;


 int ENXIO ;
 struct nfsmount* NFSTONMP (int ) ;
 scalar_t__ nfs_mount_gone (struct nfsmount*) ;
 int stub1 (int ,int ,int ,int *,int ) ;

int
nfs_removeit(struct nfs_sillyrename *nsp)
{
 struct nfsmount *nmp = NFSTONMP(nsp->nsr_dnp);
 if (nfs_mount_gone(nmp))
  return (ENXIO);
 return nmp->nm_funcs->nf_remove_rpc(nsp->nsr_dnp, nsp->nsr_name, nsp->nsr_namlen, ((void*)0), nsp->nsr_cred);
}
