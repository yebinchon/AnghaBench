
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int vfs_context_t ;
typedef scalar_t__ uint32_t ;
typedef int u_int64_t ;
struct nfsmount {int nm_vers; } ;
struct nfsm_chain {int dummy; } ;
struct nfs_fsattr {int nfsa_flags; int nfsa_bitmap; scalar_t__ nfsa_maxname; scalar_t__ nfsa_maxlink; } ;
typedef TYPE_1__* nfsnode_t ;
struct TYPE_8__ {int n_fhsize; int n_fhp; } ;


 int ENXIO ;
 int NFSPROC_PATHCONF ;
 struct nfsmount* NFSTONMP (TYPE_1__*) ;
 int NFSX_FH (int ) ;
 int NFS_BITMAP_SET (int ,int ) ;
 int NFS_FATTR_CASE_INSENSITIVE ;
 int NFS_FATTR_CASE_PRESERVING ;
 int NFS_FATTR_CHOWN_RESTRICTED ;
 int NFS_FATTR_MAXLINK ;
 int NFS_FATTR_MAXNAME ;
 int NFS_FATTR_NO_TRUNC ;
 int NFS_FSFLAG_CASE_INSENSITIVE ;
 int NFS_FSFLAG_CASE_PRESERVING ;
 int NFS_FSFLAG_CHOWN_RESTRICTED ;
 int NFS_FSFLAG_NO_TRUNC ;
 int NFS_VER3 ;
 scalar_t__ nfs_mount_gone (struct nfsmount*) ;
 int nfs_node_lock (TYPE_1__*) ;
 int nfs_node_unlock (TYPE_1__*) ;
 int nfs_request (TYPE_1__*,int *,struct nfsm_chain*,int ,int ,int *,struct nfsm_chain*,int *,int*) ;
 int nfsm_chain_add_fh (int,struct nfsm_chain*,int,int ,int ) ;
 int nfsm_chain_build_alloc_init (int,struct nfsm_chain*,int ) ;
 int nfsm_chain_build_done (int,struct nfsm_chain*) ;
 int nfsm_chain_cleanup (struct nfsm_chain*) ;
 int nfsm_chain_get_32 (int,struct nfsm_chain*,scalar_t__) ;
 int nfsm_chain_null (struct nfsm_chain*) ;
 int nfsm_chain_postop_attr_update (int,struct nfsm_chain*,TYPE_1__*,int *) ;
 int nfsmout_if (int) ;

int
nfs3_pathconf_rpc(
 nfsnode_t np,
 struct nfs_fsattr *nfsap,
 vfs_context_t ctx)
{
 u_int64_t xid;
 int error = 0, lockerror, status, nfsvers;
 struct nfsm_chain nmreq, nmrep;
 struct nfsmount *nmp = NFSTONMP(np);
 uint32_t val = 0;

 if (nfs_mount_gone(nmp))
  return (ENXIO);
 nfsvers = nmp->nm_vers;

 nfsm_chain_null(&nmreq);
 nfsm_chain_null(&nmrep);


 nfsm_chain_build_alloc_init(error, &nmreq, NFSX_FH(NFS_VER3));
 nfsm_chain_add_fh(error, &nmreq, nfsvers, np->n_fhp, np->n_fhsize);
 nfsm_chain_build_done(error, &nmreq);
 nfsmout_if(error);
 error = nfs_request(np, ((void*)0), &nmreq, NFSPROC_PATHCONF, ctx, ((void*)0), &nmrep, &xid, &status);
 if ((lockerror = nfs_node_lock(np)))
  error = lockerror;
 nfsm_chain_postop_attr_update(error, &nmrep, np, &xid);
 if (!lockerror)
  nfs_node_unlock(np);
 if (!error)
  error = status;
 nfsm_chain_get_32(error, &nmrep, nfsap->nfsa_maxlink);
 nfsm_chain_get_32(error, &nmrep, nfsap->nfsa_maxname);
 nfsap->nfsa_flags &= ~(NFS_FSFLAG_NO_TRUNC|NFS_FSFLAG_CHOWN_RESTRICTED|NFS_FSFLAG_CASE_INSENSITIVE|NFS_FSFLAG_CASE_PRESERVING);
 nfsm_chain_get_32(error, &nmrep, val);
 if (val)
  nfsap->nfsa_flags |= NFS_FSFLAG_NO_TRUNC;
 nfsm_chain_get_32(error, &nmrep, val);
 if (val)
  nfsap->nfsa_flags |= NFS_FSFLAG_CHOWN_RESTRICTED;
 nfsm_chain_get_32(error, &nmrep, val);
 if (val)
  nfsap->nfsa_flags |= NFS_FSFLAG_CASE_INSENSITIVE;
 nfsm_chain_get_32(error, &nmrep, val);
 if (val)
  nfsap->nfsa_flags |= NFS_FSFLAG_CASE_PRESERVING;
 NFS_BITMAP_SET(nfsap->nfsa_bitmap, NFS_FATTR_MAXLINK);
 NFS_BITMAP_SET(nfsap->nfsa_bitmap, NFS_FATTR_MAXNAME);
 NFS_BITMAP_SET(nfsap->nfsa_bitmap, NFS_FATTR_NO_TRUNC);
 NFS_BITMAP_SET(nfsap->nfsa_bitmap, NFS_FATTR_CHOWN_RESTRICTED);
 NFS_BITMAP_SET(nfsap->nfsa_bitmap, NFS_FATTR_CASE_INSENSITIVE);
 NFS_BITMAP_SET(nfsap->nfsa_bitmap, NFS_FATTR_CASE_PRESERVING);
nfsmout:
 nfsm_chain_cleanup(&nmreq);
 nfsm_chain_cleanup(&nmrep);
 return (error);
}
