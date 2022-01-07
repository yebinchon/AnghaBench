
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef int vnode_t ;
typedef int vfs_context_t ;
typedef int u_int64_t ;
struct vnop_link_args {struct componentname* a_cnp; int a_tdvp; int a_vp; int a_context; } ;
struct nfsreq_secinfo_args {int dummy; } ;
struct nfsmount {int nm_vers; int nm_minor_vers; } ;
struct nfsm_chain {int dummy; } ;
struct componentname {scalar_t__ cn_namelen; int cn_nameptr; } ;
typedef TYPE_2__* nfsnode_t ;
struct TYPE_19__ {int nva_flags; } ;
struct TYPE_20__ {int n_flag; int n_fhsize; int n_fhp; TYPE_1__ n_vattr; } ;


 int EEXIST ;
 int EINVAL ;
 int ENOENT ;
 int ENXIO ;
 int EPROTO ;
 int EXDEV ;
 int MNT_WAIT ;
 int NATTRINVALIDATE (TYPE_2__*) ;
 int NFSPROC4_COMPOUND ;
 int NFSREQ_SECINFO_SET (struct nfsreq_secinfo_args*,TYPE_2__*,int *,int ,int *,int ) ;
 int NFSX_UNSIGNED ;
 int NFS_FFLAG_TRIGGER_REFERRAL ;
 int NFS_OP_GETATTR ;
 int NFS_OP_LINK ;
 int NFS_OP_PUTFH ;
 int NFS_OP_RESTOREFH ;
 int NFS_OP_SAVEFH ;
 int NMODIFIED ;
 int NNEGNCENTRIES ;
 TYPE_2__* VTONFS (int ) ;
 struct nfsmount* VTONMP (int ) ;
 int V_IGNORE_WRITEERR ;
 int cache_purge_negatives (int ) ;
 int nfs_flush (TYPE_2__*,int ,int ,int ) ;
 int nfs_getattr_bitmap ;
 scalar_t__ nfs_mount_gone (struct nfsmount*) ;
 int nfs_node_clear_busy2 (TYPE_2__*,TYPE_2__*) ;
 int nfs_node_lock2 (TYPE_2__*,TYPE_2__*) ;
 int nfs_node_set_busy2 (TYPE_2__*,TYPE_2__*,int ) ;
 int nfs_node_unlock2 (TYPE_2__*,TYPE_2__*) ;
 int nfs_request (TYPE_2__*,int *,struct nfsm_chain*,int ,int ,struct nfsreq_secinfo_args*,struct nfsm_chain*,int *,int*) ;
 int nfsm_assert (int,int,int ) ;
 int nfsm_chain_add_32 (int,struct nfsm_chain*,int ) ;
 int nfsm_chain_add_bitmap_supported (int,struct nfsm_chain*,int ,struct nfsmount*,TYPE_2__*) ;
 int nfsm_chain_add_compound_header (int,struct nfsm_chain*,char*,int ,int) ;
 int nfsm_chain_add_fh (int,struct nfsm_chain*,int,int ,int ) ;
 int nfsm_chain_add_name (int,struct nfsm_chain*,int ,scalar_t__,struct nfsmount*) ;
 int nfsm_chain_build_alloc_init (int,struct nfsm_chain*,scalar_t__) ;
 int nfsm_chain_build_done (int,struct nfsm_chain*) ;
 int nfsm_chain_check_change_info (int,struct nfsm_chain*,TYPE_2__*) ;
 int nfsm_chain_cleanup (struct nfsm_chain*) ;
 int nfsm_chain_get_32 (int,struct nfsm_chain*,int) ;
 int nfsm_chain_loadattr (int,struct nfsm_chain*,TYPE_2__*,int,int *) ;
 int nfsm_chain_null (struct nfsm_chain*) ;
 int nfsm_chain_op_check (int,struct nfsm_chain*,int ) ;
 int nfsm_chain_skip_tag (int,struct nfsm_chain*) ;
 int nfsmout_if (int) ;
 int vfs_context_thread (int ) ;
 scalar_t__ vnode_mount (int ) ;

int
nfs4_vnop_link(
 struct vnop_link_args *ap)






{
 vfs_context_t ctx = ap->a_context;
 vnode_t vp = ap->a_vp;
 vnode_t tdvp = ap->a_tdvp;
 struct componentname *cnp = ap->a_cnp;
 int error = 0, lockerror = ENOENT, status;
 struct nfsmount *nmp;
 nfsnode_t np = VTONFS(vp);
 nfsnode_t tdnp = VTONFS(tdvp);
 int nfsvers, numops;
 u_int64_t xid, savedxid;
 struct nfsm_chain nmreq, nmrep;
 struct nfsreq_secinfo_args si;

 if (vnode_mount(vp) != vnode_mount(tdvp))
  return (EXDEV);

 nmp = VTONMP(vp);
 if (nfs_mount_gone(nmp))
  return (ENXIO);
 nfsvers = nmp->nm_vers;
 if (np->n_vattr.nva_flags & NFS_FFLAG_TRIGGER_REFERRAL)
  return (EINVAL);
 if (tdnp->n_vattr.nva_flags & NFS_FFLAG_TRIGGER_REFERRAL)
  return (EINVAL);






 nfs_flush(np, MNT_WAIT, vfs_context_thread(ctx), V_IGNORE_WRITEERR);

 if ((error = nfs_node_set_busy2(tdnp, np, vfs_context_thread(ctx))))
  return (error);

 NFSREQ_SECINFO_SET(&si, np, ((void*)0), 0, ((void*)0), 0);
 nfsm_chain_null(&nmreq);
 nfsm_chain_null(&nmrep);


 numops = 7;
 nfsm_chain_build_alloc_init(error, &nmreq, 29 * NFSX_UNSIGNED + cnp->cn_namelen);
 nfsm_chain_add_compound_header(error, &nmreq, "link", nmp->nm_minor_vers, numops);
 numops--;
 nfsm_chain_add_32(error, &nmreq, NFS_OP_PUTFH);
 nfsm_chain_add_fh(error, &nmreq, nfsvers, np->n_fhp, np->n_fhsize);
 numops--;
 nfsm_chain_add_32(error, &nmreq, NFS_OP_SAVEFH);
 numops--;
 nfsm_chain_add_32(error, &nmreq, NFS_OP_PUTFH);
 nfsm_chain_add_fh(error, &nmreq, nfsvers, tdnp->n_fhp, tdnp->n_fhsize);
 numops--;
 nfsm_chain_add_32(error, &nmreq, NFS_OP_LINK);
 nfsm_chain_add_name(error, &nmreq, cnp->cn_nameptr, cnp->cn_namelen, nmp);
 numops--;
 nfsm_chain_add_32(error, &nmreq, NFS_OP_GETATTR);
 nfsm_chain_add_bitmap_supported(error, &nmreq, nfs_getattr_bitmap, nmp, tdnp);
 numops--;
 nfsm_chain_add_32(error, &nmreq, NFS_OP_RESTOREFH);
 numops--;
 nfsm_chain_add_32(error, &nmreq, NFS_OP_GETATTR);
 nfsm_chain_add_bitmap_supported(error, &nmreq, nfs_getattr_bitmap, nmp, np);
 nfsm_chain_build_done(error, &nmreq);
 nfsm_assert(error, (numops == 0), EPROTO);
 nfsmout_if(error);
 error = nfs_request(tdnp, ((void*)0), &nmreq, NFSPROC4_COMPOUND, ctx, &si, &nmrep, &xid, &status);

 if ((lockerror = nfs_node_lock2(tdnp, np))) {
  error = lockerror;
  goto nfsmout;
 }
 nfsm_chain_skip_tag(error, &nmrep);
 nfsm_chain_get_32(error, &nmrep, numops);
 nfsm_chain_op_check(error, &nmrep, NFS_OP_PUTFH);
 nfsm_chain_op_check(error, &nmrep, NFS_OP_SAVEFH);
 nfsm_chain_op_check(error, &nmrep, NFS_OP_PUTFH);
 nfsm_chain_op_check(error, &nmrep, NFS_OP_LINK);
 nfsm_chain_check_change_info(error, &nmrep, tdnp);

 nfsm_chain_op_check(error, &nmrep, NFS_OP_GETATTR);
 savedxid = xid;
 nfsm_chain_loadattr(error, &nmrep, tdnp, nfsvers, &xid);
 if (error)
  NATTRINVALIDATE(tdnp);

 nfsm_chain_op_check(error, &nmrep, NFS_OP_RESTOREFH);
 nfsm_chain_op_check(error, &nmrep, NFS_OP_GETATTR);
 xid = savedxid;
 nfsm_chain_loadattr(error, &nmrep, np, nfsvers, &xid);
 if (error)
  NATTRINVALIDATE(np);
nfsmout:
 nfsm_chain_cleanup(&nmreq);
 nfsm_chain_cleanup(&nmrep);
 if (!lockerror)
  tdnp->n_flag |= NMODIFIED;

 if (error == EEXIST)
  error = 0;
 if (!error && (tdnp->n_flag & NNEGNCENTRIES)) {
  tdnp->n_flag &= ~NNEGNCENTRIES;
  cache_purge_negatives(tdvp);
 }
 if (!lockerror)
  nfs_node_unlock2(tdnp, np);
 nfs_node_clear_busy2(tdnp, np);
 return (error);
}
