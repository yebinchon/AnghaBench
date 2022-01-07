
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vfs_context_t ;
typedef int u_int64_t ;
typedef int u_char ;
struct nfsmount {int nm_vers; } ;
struct nfsm_chain {int dummy; } ;
struct nfs_vattr {int dummy; } ;
typedef int nfsnode_t ;
typedef scalar_t__ mount_t ;


 int ENXIO ;
 int NFSPROC_GETATTR ;
 struct nfsmount* NFSTONMP (int ) ;
 int NFSX_FH (int) ;
 int NFS_VER2 ;
 int NGA_MONITOR ;
 int NGA_SOFT ;
 int R_RECOVER ;
 int R_SOFT ;
 struct nfsmount* VFSTONFS (scalar_t__) ;
 scalar_t__ nfs_mount_gone (struct nfsmount*) ;
 int nfs_parsefattr (struct nfsm_chain*,int,struct nfs_vattr*) ;
 int nfs_request2 (int ,scalar_t__,struct nfsm_chain*,int ,int ,int ,int *,int,struct nfsm_chain*,int *,int*) ;
 int nfsm_chain_add_32 (int,struct nfsm_chain*,size_t) ;
 int nfsm_chain_add_opaque (int,struct nfsm_chain*,int *,size_t) ;
 int nfsm_chain_build_alloc_init (int,struct nfsm_chain*,int ) ;
 int nfsm_chain_build_done (int,struct nfsm_chain*) ;
 int nfsm_chain_cleanup (struct nfsm_chain*) ;
 int nfsm_chain_null (struct nfsm_chain*) ;
 int nfsmout_if (int) ;
 int vfs_context_thread (int ) ;
 int vfs_context_ucred (int ) ;

int
nfs3_getattr_rpc(
 nfsnode_t np,
 mount_t mp,
 u_char *fhp,
 size_t fhsize,
 int flags,
 vfs_context_t ctx,
 struct nfs_vattr *nvap,
 u_int64_t *xidp)
{
 struct nfsmount *nmp = mp ? VFSTONFS(mp) : NFSTONMP(np);
 int error = 0, status, nfsvers, rpcflags = 0;
 struct nfsm_chain nmreq, nmrep;

 if (nfs_mount_gone(nmp))
  return (ENXIO);
 nfsvers = nmp->nm_vers;

 if (flags & NGA_MONITOR)
  rpcflags = R_RECOVER;

 if (flags & NGA_SOFT)
  rpcflags |= R_SOFT;

 nfsm_chain_null(&nmreq);
 nfsm_chain_null(&nmrep);

 nfsm_chain_build_alloc_init(error, &nmreq, NFSX_FH(nfsvers));
 if (nfsvers != NFS_VER2)
  nfsm_chain_add_32(error, &nmreq, fhsize);
 nfsm_chain_add_opaque(error, &nmreq, fhp, fhsize);
 nfsm_chain_build_done(error, &nmreq);
 nfsmout_if(error);
 error = nfs_request2(np, mp, &nmreq, NFSPROC_GETATTR,
   vfs_context_thread(ctx), vfs_context_ucred(ctx),
   ((void*)0), rpcflags, &nmrep, xidp, &status);
 if (!error)
  error = status;
 nfsmout_if(error);
 error = nfs_parsefattr(&nmrep, nfsvers, nvap);
nfsmout:
 nfsm_chain_cleanup(&nmreq);
 nfsm_chain_cleanup(&nmrep);
 return (error);
}
