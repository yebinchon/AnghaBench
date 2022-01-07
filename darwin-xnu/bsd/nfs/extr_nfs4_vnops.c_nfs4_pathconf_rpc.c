
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int vfs_context_t ;
typedef int uint32_t ;
typedef int u_int64_t ;
struct nfsreq_secinfo_args {int dummy; } ;
struct nfsmount {int nm_vers; int nm_minor_vers; } ;
struct nfsm_chain {int dummy; } ;
struct nfs_vattr {int dummy; } ;
struct nfs_fsattr {int dummy; } ;
typedef TYPE_2__* nfsnode_t ;
struct TYPE_11__ {int nva_flags; } ;
struct TYPE_12__ {int n_fhsize; int n_fhp; TYPE_1__ n_vattr; } ;


 int EINVAL ;
 int ENXIO ;
 int EPROTO ;
 int NFSPROC4_COMPOUND ;
 int NFSREQ_SECINFO_SET (struct nfsreq_secinfo_args*,TYPE_2__*,int *,int ,int *,int ) ;
 struct nfsmount* NFSTONMP (TYPE_2__*) ;
 int NFSX_UNSIGNED ;
 int NFS_ATTR_BITMAP_LEN ;
 int NFS_BITMAP_SET (int *,int ) ;
 int NFS_COPY_ATTRIBUTES (int ,int *) ;
 int NFS_FATTR_CASE_INSENSITIVE ;
 int NFS_FATTR_CASE_PRESERVING ;
 int NFS_FATTR_CHOWN_RESTRICTED ;
 int NFS_FATTR_MAXLINK ;
 int NFS_FATTR_MAXNAME ;
 int NFS_FATTR_NO_TRUNC ;
 int NFS_FFLAG_TRIGGER_REFERRAL ;
 int NFS_OP_GETATTR ;
 int NFS_OP_PUTFH ;
 int NVATTR_CLEANUP (struct nfs_vattr*) ;
 int NVATTR_INIT (struct nfs_vattr*) ;
 int nfs4_parsefattr (struct nfsm_chain*,struct nfs_fsattr*,struct nfs_vattr*,int *,int *,int *) ;
 int nfs_getattr_bitmap ;
 int nfs_loadattrcache (TYPE_2__*,struct nfs_vattr*,int *,int ) ;
 scalar_t__ nfs_mount_gone (struct nfsmount*) ;
 int nfs_node_lock (TYPE_2__*) ;
 int nfs_node_unlock (TYPE_2__*) ;
 int nfs_request (TYPE_2__*,int *,struct nfsm_chain*,int ,int ,struct nfsreq_secinfo_args*,struct nfsm_chain*,int *,int*) ;
 int nfsm_assert (int,int,int ) ;
 int nfsm_chain_add_32 (int,struct nfsm_chain*,int ) ;
 int nfsm_chain_add_bitmap_supported (int,struct nfsm_chain*,int *,struct nfsmount*,TYPE_2__*) ;
 int nfsm_chain_add_compound_header (int,struct nfsm_chain*,char*,int ,int) ;
 int nfsm_chain_add_fh (int,struct nfsm_chain*,int,int ,int ) ;
 int nfsm_chain_build_alloc_init (int,struct nfsm_chain*,int) ;
 int nfsm_chain_build_done (int,struct nfsm_chain*) ;
 int nfsm_chain_cleanup (struct nfsm_chain*) ;
 int nfsm_chain_get_32 (int,struct nfsm_chain*,int) ;
 int nfsm_chain_null (struct nfsm_chain*) ;
 int nfsm_chain_op_check (int,struct nfsm_chain*,int ) ;
 int nfsm_chain_skip_tag (int,struct nfsm_chain*) ;
 int nfsmout_if (int) ;

int
nfs4_pathconf_rpc(
 nfsnode_t np,
 struct nfs_fsattr *nfsap,
 vfs_context_t ctx)
{
 u_int64_t xid;
 int error = 0, lockerror, status, nfsvers, numops;
 struct nfsm_chain nmreq, nmrep;
 struct nfsmount *nmp = NFSTONMP(np);
 uint32_t bitmap[NFS_ATTR_BITMAP_LEN];
 struct nfs_vattr nvattr;
 struct nfsreq_secinfo_args si;

 if (nfs_mount_gone(nmp))
  return (ENXIO);
 nfsvers = nmp->nm_vers;
 if (np->n_vattr.nva_flags & NFS_FFLAG_TRIGGER_REFERRAL)
  return (EINVAL);

 NFSREQ_SECINFO_SET(&si, np, ((void*)0), 0, ((void*)0), 0);
 NVATTR_INIT(&nvattr);
 nfsm_chain_null(&nmreq);
 nfsm_chain_null(&nmrep);



 numops = 2;
 nfsm_chain_build_alloc_init(error, &nmreq, 16 * NFSX_UNSIGNED);
 nfsm_chain_add_compound_header(error, &nmreq, "pathconf", nmp->nm_minor_vers, numops);
 numops--;
 nfsm_chain_add_32(error, &nmreq, NFS_OP_PUTFH);
 nfsm_chain_add_fh(error, &nmreq, nfsvers, np->n_fhp, np->n_fhsize);
 numops--;
 nfsm_chain_add_32(error, &nmreq, NFS_OP_GETATTR);
 NFS_COPY_ATTRIBUTES(nfs_getattr_bitmap, bitmap);
 NFS_BITMAP_SET(bitmap, NFS_FATTR_MAXLINK);
 NFS_BITMAP_SET(bitmap, NFS_FATTR_MAXNAME);
 NFS_BITMAP_SET(bitmap, NFS_FATTR_NO_TRUNC);
 NFS_BITMAP_SET(bitmap, NFS_FATTR_CHOWN_RESTRICTED);
 NFS_BITMAP_SET(bitmap, NFS_FATTR_CASE_INSENSITIVE);
 NFS_BITMAP_SET(bitmap, NFS_FATTR_CASE_PRESERVING);
 nfsm_chain_add_bitmap_supported(error, &nmreq, bitmap, nmp, np);
 nfsm_chain_build_done(error, &nmreq);
 nfsm_assert(error, (numops == 0), EPROTO);
 nfsmout_if(error);
 error = nfs_request(np, ((void*)0), &nmreq, NFSPROC4_COMPOUND, ctx, &si, &nmrep, &xid, &status);

 nfsm_chain_skip_tag(error, &nmrep);
 nfsm_chain_get_32(error, &nmrep, numops);
 nfsm_chain_op_check(error, &nmrep, NFS_OP_PUTFH);
 nfsm_chain_op_check(error, &nmrep, NFS_OP_GETATTR);
 nfsmout_if(error);
 error = nfs4_parsefattr(&nmrep, nfsap, &nvattr, ((void*)0), ((void*)0), ((void*)0));
 nfsmout_if(error);
 if ((lockerror = nfs_node_lock(np)))
  error = lockerror;
 if (!error)
  nfs_loadattrcache(np, &nvattr, &xid, 0);
 if (!lockerror)
  nfs_node_unlock(np);
nfsmout:
 NVATTR_CLEANUP(&nvattr);
 nfsm_chain_cleanup(&nmreq);
 nfsm_chain_cleanup(&nmrep);
 return (error);
}
