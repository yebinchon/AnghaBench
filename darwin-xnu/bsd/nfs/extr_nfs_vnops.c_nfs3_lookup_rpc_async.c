
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int vfs_context_t ;
struct nfsreq {int dummy; } ;
struct nfsmount {int nm_vers; } ;
struct nfsm_chain {int dummy; } ;
typedef TYPE_1__* nfsnode_t ;
struct TYPE_5__ {int n_fhsize; int n_fhp; } ;


 int ENXIO ;
 int NFSPROC_LOOKUP ;
 struct nfsmount* NFSTONMP (TYPE_1__*) ;
 scalar_t__ NFSX_FH (int) ;
 scalar_t__ NFSX_UNSIGNED ;
 scalar_t__ nfs_mount_gone (struct nfsmount*) ;
 int nfs_request_async (TYPE_1__*,int *,struct nfsm_chain*,int ,int ,int ,int *,int ,int *,struct nfsreq**) ;
 int nfsm_chain_add_fh (int,struct nfsm_chain*,int,int ,int ) ;
 int nfsm_chain_add_name (int,struct nfsm_chain*,char*,int,struct nfsmount*) ;
 int nfsm_chain_build_alloc_init (int,struct nfsm_chain*,scalar_t__) ;
 int nfsm_chain_build_done (int,struct nfsm_chain*) ;
 int nfsm_chain_cleanup (struct nfsm_chain*) ;
 int nfsm_chain_null (struct nfsm_chain*) ;
 scalar_t__ nfsm_rndup (int) ;
 int nfsmout_if (int) ;
 int vfs_context_thread (int ) ;
 int vfs_context_ucred (int ) ;

int
nfs3_lookup_rpc_async(
 nfsnode_t dnp,
 char *name,
 int namelen,
 vfs_context_t ctx,
 struct nfsreq **reqp)
{
 struct nfsmount *nmp;
 struct nfsm_chain nmreq;
 int error = 0, nfsvers;

 nmp = NFSTONMP(dnp);
 if (nfs_mount_gone(nmp))
  return (ENXIO);
 nfsvers = nmp->nm_vers;

 nfsm_chain_null(&nmreq);

 nfsm_chain_build_alloc_init(error, &nmreq,
  NFSX_FH(nfsvers) + NFSX_UNSIGNED + nfsm_rndup(namelen));
 nfsm_chain_add_fh(error, &nmreq, nfsvers, dnp->n_fhp, dnp->n_fhsize);
 nfsm_chain_add_name(error, &nmreq, name, namelen, nmp);
 nfsm_chain_build_done(error, &nmreq);
 nfsmout_if(error);
 error = nfs_request_async(dnp, ((void*)0), &nmreq, NFSPROC_LOOKUP,
   vfs_context_thread(ctx), vfs_context_ucred(ctx), ((void*)0), 0, ((void*)0), reqp);
nfsmout:
 nfsm_chain_cleanup(&nmreq);
 return (error);
}
