
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int vfs_context_t ;
typedef int uint32_t ;
typedef int u_int64_t ;
typedef int u_char ;
struct nfsreq_secinfo_args {int dummy; } ;
struct TYPE_9__ {int nfsa_flags; } ;
struct nfsmount {int nm_vers; int nm_minor_vers; TYPE_1__ nm_fsattr; } ;
struct nfsm_chain {int dummy; } ;
struct nfs_vattr {int * nva_acl; int * nva_bitmap; } ;
typedef TYPE_3__* nfsnode_t ;
typedef scalar_t__ mount_t ;
struct TYPE_10__ {int nva_flags; } ;
struct TYPE_11__ {int n_parent; TYPE_2__ n_vattr; } ;


 int ENXIO ;
 int EPROTO ;
 int NFSPROC4_COMPOUND ;
 int NFSREQ_SECINFO_SET (struct nfsreq_secinfo_args*,TYPE_3__*,int *,int ,int *,int ) ;
 struct nfsmount* NFSTONMP (TYPE_3__*) ;
 int NFSX_UNSIGNED ;
 int NFS_ATTR_BITMAP_LEN ;
 int NFS_BITMAP_ISSET (int *,int ) ;
 int NFS_BITMAP_SET (int *,int ) ;
 int NFS_COPY_ATTRIBUTES (int ,int *) ;
 int NFS_FATTR_ACL ;
 int NFS_FFLAG_TRIGGER_REFERRAL ;
 int NFS_FSFLAG_ACL ;
 int NFS_OP_GETATTR ;
 int NFS_OP_PUTFH ;
 int NGA_ACL ;
 int NGA_MONITOR ;
 int NGA_SOFT ;
 int R_RECOVER ;
 int R_SOFT ;
 struct nfsmount* VFSTONFS (scalar_t__) ;
 int VTONFS (int ) ;
 int nfs4_default_attrs_for_referral_trigger (int ,int *,int ,struct nfs_vattr*,int *) ;
 int nfs4_parsefattr (struct nfsm_chain*,int *,struct nfs_vattr*,int *,int *,int *) ;
 int nfs_getattr_bitmap ;
 scalar_t__ nfs_mount_gone (struct nfsmount*) ;
 int nfs_request2 (TYPE_3__*,scalar_t__,struct nfsm_chain*,int ,int ,int ,int *,int,struct nfsm_chain*,int *,int*) ;
 int nfsm_assert (int,int,int ) ;
 int nfsm_chain_add_32 (int,struct nfsm_chain*,int ) ;
 int nfsm_chain_add_bitmap_supported (int,struct nfsm_chain*,int *,struct nfsmount*,TYPE_3__*) ;
 int nfsm_chain_add_compound_header (int,struct nfsm_chain*,char*,int ,int) ;
 int nfsm_chain_add_fh (int,struct nfsm_chain*,int,int *,size_t) ;
 int nfsm_chain_build_alloc_init (int,struct nfsm_chain*,int) ;
 int nfsm_chain_build_done (int,struct nfsm_chain*) ;
 int nfsm_chain_cleanup (struct nfsm_chain*) ;
 int nfsm_chain_get_32 (int,struct nfsm_chain*,int) ;
 int nfsm_chain_null (struct nfsm_chain*) ;
 int nfsm_chain_op_check (int,struct nfsm_chain*,int ) ;
 int nfsm_chain_skip_tag (int,struct nfsm_chain*) ;
 int nfsmout_if (int) ;
 int vfs_context_thread (int ) ;
 int vfs_context_ucred (int ) ;

int
nfs4_getattr_rpc(
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
 int error = 0, status, nfsvers, numops, rpcflags = 0, acls;
 uint32_t bitmap[NFS_ATTR_BITMAP_LEN];
 struct nfsm_chain nmreq, nmrep;
 struct nfsreq_secinfo_args si;

 if (nfs_mount_gone(nmp))
  return (ENXIO);
 nfsvers = nmp->nm_vers;
 acls = (nmp->nm_fsattr.nfsa_flags & NFS_FSFLAG_ACL);

 if (np && (np->n_vattr.nva_flags & NFS_FFLAG_TRIGGER_REFERRAL)) {
  nfs4_default_attrs_for_referral_trigger(VTONFS(np->n_parent), ((void*)0), 0, nvap, ((void*)0));
  return (0);
 }

 if (flags & NGA_MONITOR)
  rpcflags = R_RECOVER;

 if (flags & NGA_SOFT)
  rpcflags |= R_SOFT;

 NFSREQ_SECINFO_SET(&si, np, ((void*)0), 0, ((void*)0), 0);
 nfsm_chain_null(&nmreq);
 nfsm_chain_null(&nmrep);


 numops = 2;
 nfsm_chain_build_alloc_init(error, &nmreq, 15 * NFSX_UNSIGNED);
 nfsm_chain_add_compound_header(error, &nmreq, "getattr", nmp->nm_minor_vers, numops);
 numops--;
 nfsm_chain_add_32(error, &nmreq, NFS_OP_PUTFH);
 nfsm_chain_add_fh(error, &nmreq, nfsvers, fhp, fhsize);
 numops--;
 nfsm_chain_add_32(error, &nmreq, NFS_OP_GETATTR);
 NFS_COPY_ATTRIBUTES(nfs_getattr_bitmap, bitmap);
 if ((flags & NGA_ACL) && acls)
  NFS_BITMAP_SET(bitmap, NFS_FATTR_ACL);
 nfsm_chain_add_bitmap_supported(error, &nmreq, bitmap, nmp, np);
 nfsm_chain_build_done(error, &nmreq);
 nfsm_assert(error, (numops == 0), EPROTO);
 nfsmout_if(error);
 error = nfs_request2(np, mp, &nmreq, NFSPROC4_COMPOUND,
   vfs_context_thread(ctx), vfs_context_ucred(ctx),
   ((void*)0), rpcflags, &nmrep, xidp, &status);

 nfsm_chain_skip_tag(error, &nmrep);
 nfsm_chain_get_32(error, &nmrep, numops);
 nfsm_chain_op_check(error, &nmrep, NFS_OP_PUTFH);
 nfsm_chain_op_check(error, &nmrep, NFS_OP_GETATTR);
 nfsmout_if(error);
 error = nfs4_parsefattr(&nmrep, ((void*)0), nvap, ((void*)0), ((void*)0), ((void*)0));
 nfsmout_if(error);
 if ((flags & NGA_ACL) && acls && !NFS_BITMAP_ISSET(nvap->nva_bitmap, NFS_FATTR_ACL)) {

  NFS_BITMAP_SET(nvap->nva_bitmap, NFS_FATTR_ACL);
  nvap->nva_acl = ((void*)0);
 }
nfsmout:
 nfsm_chain_cleanup(&nmreq);
 nfsm_chain_cleanup(&nmrep);
 return (error);
}
