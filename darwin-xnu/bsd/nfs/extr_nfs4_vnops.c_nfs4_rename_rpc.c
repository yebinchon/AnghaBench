
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int vfs_context_t ;
typedef int u_int64_t ;
struct nfsreq_secinfo_args {int dummy; } ;
struct nfsmount {int nm_vers; int nm_minor_vers; } ;
struct nfsm_chain {int dummy; } ;
typedef TYPE_2__* nfsnode_t ;
struct TYPE_16__ {int nva_flags; } ;
struct TYPE_17__ {int n_flag; int n_fhsize; int n_fhp; TYPE_1__ n_vattr; } ;


 int EINVAL ;
 int ENOENT ;
 int ENXIO ;
 int EPROTO ;
 int NATTRINVALIDATE (TYPE_2__*) ;
 int NFSPROC4_COMPOUND ;
 int NFSREQ_SECINFO_SET (struct nfsreq_secinfo_args*,TYPE_2__*,int *,int ,int *,int ) ;
 struct nfsmount* NFSTONMP (TYPE_2__*) ;
 int NFSX_UNSIGNED ;
 int NFS_FFLAG_TRIGGER_REFERRAL ;
 int NFS_OP_GETATTR ;
 int NFS_OP_PUTFH ;
 int NFS_OP_RENAME ;
 int NFS_OP_RESTOREFH ;
 int NFS_OP_SAVEFH ;
 int NMODIFIED ;
 int nfs_getattr_bitmap ;
 scalar_t__ nfs_mount_gone (struct nfsmount*) ;
 int nfs_node_lock2 (TYPE_2__*,TYPE_2__*) ;
 int nfs_node_unlock2 (TYPE_2__*,TYPE_2__*) ;
 int nfs_request (TYPE_2__*,int *,struct nfsm_chain*,int ,int ,struct nfsreq_secinfo_args*,struct nfsm_chain*,int *,int*) ;
 int nfsm_assert (int,int,int ) ;
 int nfsm_chain_add_32 (int,struct nfsm_chain*,int ) ;
 int nfsm_chain_add_bitmap_supported (int,struct nfsm_chain*,int ,struct nfsmount*,TYPE_2__*) ;
 int nfsm_chain_add_compound_header (int,struct nfsm_chain*,char*,int ,int) ;
 int nfsm_chain_add_fh (int,struct nfsm_chain*,int,int ,int ) ;
 int nfsm_chain_add_name (int,struct nfsm_chain*,char*,int,struct nfsmount*) ;
 int nfsm_chain_build_alloc_init (int,struct nfsm_chain*,int) ;
 int nfsm_chain_build_done (int,struct nfsm_chain*) ;
 int nfsm_chain_check_change_info (int,struct nfsm_chain*,TYPE_2__*) ;
 int nfsm_chain_cleanup (struct nfsm_chain*) ;
 int nfsm_chain_get_32 (int,struct nfsm_chain*,int) ;
 int nfsm_chain_loadattr (int,struct nfsm_chain*,TYPE_2__*,int,int *) ;
 int nfsm_chain_null (struct nfsm_chain*) ;
 int nfsm_chain_op_check (int,struct nfsm_chain*,int ) ;
 int nfsm_chain_skip_tag (int,struct nfsm_chain*) ;
 int nfsmout_if (int) ;

int
nfs4_rename_rpc(
 nfsnode_t fdnp,
 char *fnameptr,
 int fnamelen,
 nfsnode_t tdnp,
 char *tnameptr,
 int tnamelen,
 vfs_context_t ctx)
{
 int error = 0, lockerror = ENOENT, status, nfsvers, numops;
 struct nfsmount *nmp;
 u_int64_t xid, savedxid;
 struct nfsm_chain nmreq, nmrep;
 struct nfsreq_secinfo_args si;

 nmp = NFSTONMP(fdnp);
 if (nfs_mount_gone(nmp))
  return (ENXIO);
 nfsvers = nmp->nm_vers;
 if (fdnp->n_vattr.nva_flags & NFS_FFLAG_TRIGGER_REFERRAL)
  return (EINVAL);
 if (tdnp->n_vattr.nva_flags & NFS_FFLAG_TRIGGER_REFERRAL)
  return (EINVAL);

 NFSREQ_SECINFO_SET(&si, fdnp, ((void*)0), 0, ((void*)0), 0);
 nfsm_chain_null(&nmreq);
 nfsm_chain_null(&nmrep);


 numops = 7;
 nfsm_chain_build_alloc_init(error, &nmreq, 30 * NFSX_UNSIGNED + fnamelen + tnamelen);
 nfsm_chain_add_compound_header(error, &nmreq, "rename", nmp->nm_minor_vers, numops);
 numops--;
 nfsm_chain_add_32(error, &nmreq, NFS_OP_PUTFH);
 nfsm_chain_add_fh(error, &nmreq, nfsvers, fdnp->n_fhp, fdnp->n_fhsize);
 numops--;
 nfsm_chain_add_32(error, &nmreq, NFS_OP_SAVEFH);
 numops--;
 nfsm_chain_add_32(error, &nmreq, NFS_OP_PUTFH);
 nfsm_chain_add_fh(error, &nmreq, nfsvers, tdnp->n_fhp, tdnp->n_fhsize);
 numops--;
 nfsm_chain_add_32(error, &nmreq, NFS_OP_RENAME);
 nfsm_chain_add_name(error, &nmreq, fnameptr, fnamelen, nmp);
 nfsm_chain_add_name(error, &nmreq, tnameptr, tnamelen, nmp);
 numops--;
 nfsm_chain_add_32(error, &nmreq, NFS_OP_GETATTR);
 nfsm_chain_add_bitmap_supported(error, &nmreq, nfs_getattr_bitmap, nmp, tdnp);
 numops--;
 nfsm_chain_add_32(error, &nmreq, NFS_OP_RESTOREFH);
 numops--;
 nfsm_chain_add_32(error, &nmreq, NFS_OP_GETATTR);
 nfsm_chain_add_bitmap_supported(error, &nmreq, nfs_getattr_bitmap, nmp, fdnp);
 nfsm_chain_build_done(error, &nmreq);
 nfsm_assert(error, (numops == 0), EPROTO);
 nfsmout_if(error);

 error = nfs_request(fdnp, ((void*)0), &nmreq, NFSPROC4_COMPOUND, ctx, &si, &nmrep, &xid, &status);

 if ((lockerror = nfs_node_lock2(fdnp, tdnp)))
  error = lockerror;
 nfsm_chain_skip_tag(error, &nmrep);
 nfsm_chain_get_32(error, &nmrep, numops);
 nfsm_chain_op_check(error, &nmrep, NFS_OP_PUTFH);
 nfsm_chain_op_check(error, &nmrep, NFS_OP_SAVEFH);
 nfsm_chain_op_check(error, &nmrep, NFS_OP_PUTFH);
 nfsm_chain_op_check(error, &nmrep, NFS_OP_RENAME);
 nfsm_chain_check_change_info(error, &nmrep, fdnp);
 nfsm_chain_check_change_info(error, &nmrep, tdnp);

 nfsm_chain_op_check(error, &nmrep, NFS_OP_GETATTR);
 savedxid = xid;
 nfsm_chain_loadattr(error, &nmrep, tdnp, nfsvers, &xid);
 if (error && !lockerror)
  NATTRINVALIDATE(tdnp);
 nfsm_chain_op_check(error, &nmrep, NFS_OP_RESTOREFH);
 nfsm_chain_op_check(error, &nmrep, NFS_OP_GETATTR);
 xid = savedxid;
 nfsm_chain_loadattr(error, &nmrep, fdnp, nfsvers, &xid);
 if (error && !lockerror)
  NATTRINVALIDATE(fdnp);
nfsmout:
 nfsm_chain_cleanup(&nmreq);
 nfsm_chain_cleanup(&nmrep);
 if (!lockerror) {
  fdnp->n_flag |= NMODIFIED;
  tdnp->n_flag |= NMODIFIED;
  nfs_node_unlock2(fdnp, tdnp);
 }
 return (error);
}
