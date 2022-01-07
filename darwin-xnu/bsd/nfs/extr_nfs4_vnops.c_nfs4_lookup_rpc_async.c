
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int vfs_context_t ;
typedef int uint32_t ;
struct nfsreq_secinfo_args {int dummy; } ;
struct nfsreq {int dummy; } ;
struct nfsmount {int nm_vers; int nm_minor_vers; } ;
struct nfsm_chain {int dummy; } ;
typedef TYPE_2__* nfsnode_t ;
struct TYPE_8__ {int nva_flags; } ;
struct TYPE_9__ {int n_flag; int n_fhsize; int * n_fhp; TYPE_1__ n_vattr; } ;


 int EINVAL ;
 int ENXIO ;
 int EPROTO ;
 int NFSPROC4_COMPOUND ;
 int NFSREQ_SECINFO_SET (struct nfsreq_secinfo_args*,TYPE_2__*,int *,int ,char*,int) ;
 struct nfsmount* NFSTONMP (TYPE_2__*) ;
 int NFSX_UNSIGNED ;
 int NFS_ATTR_BITMAP_LEN ;
 int NFS_BITMAP_CLR (int *,int ) ;
 int NFS_COPY_ATTRIBUTES (int *,int *) ;
 int NFS_FATTR_NAMED_ATTR ;
 int NFS_FFLAG_TRIGGER_REFERRAL ;
 int NFS_OP_GETATTR ;
 int NFS_OP_GETFH ;
 int NFS_OP_LOOKUP ;
 int NFS_OP_LOOKUPP ;
 int NFS_OP_PUTFH ;
 int NISDOTZFS ;
 int NISDOTZFSCHILD ;
 int * nfs_getattr_bitmap ;
 scalar_t__ nfs_mount_gone (struct nfsmount*) ;
 int nfs_request_async (TYPE_2__*,int *,struct nfsm_chain*,int ,int ,int ,struct nfsreq_secinfo_args*,int ,int *,struct nfsreq**) ;
 int nfsm_assert (int,int,int ) ;
 int nfsm_chain_add_32 (int,struct nfsm_chain*,int ) ;
 int nfsm_chain_add_bitmap_supported (int,struct nfsm_chain*,int *,struct nfsmount*,TYPE_2__*) ;
 int nfsm_chain_add_compound_header (int,struct nfsm_chain*,char*,int ,int) ;
 int nfsm_chain_add_fh (int,struct nfsm_chain*,int,int *,int ) ;
 int nfsm_chain_add_name (int,struct nfsm_chain*,char*,int,struct nfsmount*) ;
 int nfsm_chain_build_alloc_init (int,struct nfsm_chain*,int) ;
 int nfsm_chain_build_done (int,struct nfsm_chain*) ;
 int nfsm_chain_cleanup (struct nfsm_chain*) ;
 int nfsm_chain_null (struct nfsm_chain*) ;
 int nfsmout_if (int) ;
 int vfs_context_thread (int ) ;
 int vfs_context_ucred (int ) ;

int
nfs4_lookup_rpc_async(
 nfsnode_t dnp,
 char *name,
 int namelen,
 vfs_context_t ctx,
 struct nfsreq **reqp)
{
 int error = 0, isdotdot = 0, nfsvers, numops;
 struct nfsm_chain nmreq;
 uint32_t bitmap[NFS_ATTR_BITMAP_LEN];
 struct nfsmount *nmp;
 struct nfsreq_secinfo_args si;

 nmp = NFSTONMP(dnp);
 if (nfs_mount_gone(nmp))
  return (ENXIO);
 nfsvers = nmp->nm_vers;
 if (dnp->n_vattr.nva_flags & NFS_FFLAG_TRIGGER_REFERRAL)
  return (EINVAL);

 if ((name[0] == '.') && (name[1] == '.') && (namelen == 2)) {
  isdotdot = 1;
  NFSREQ_SECINFO_SET(&si, dnp, ((void*)0), 0, ((void*)0), 0);
 } else {
  NFSREQ_SECINFO_SET(&si, dnp, dnp->n_fhp, dnp->n_fhsize, name, namelen);
 }

 nfsm_chain_null(&nmreq);


 numops = 5;
 nfsm_chain_build_alloc_init(error, &nmreq, 20 * NFSX_UNSIGNED + namelen);
 nfsm_chain_add_compound_header(error, &nmreq, "lookup", nmp->nm_minor_vers, numops);
 numops--;
 nfsm_chain_add_32(error, &nmreq, NFS_OP_PUTFH);
 nfsm_chain_add_fh(error, &nmreq, nfsvers, dnp->n_fhp, dnp->n_fhsize);
 numops--;
 nfsm_chain_add_32(error, &nmreq, NFS_OP_GETATTR);
 nfsm_chain_add_bitmap_supported(error, &nmreq, nfs_getattr_bitmap, nmp, dnp);
 numops--;
 if (isdotdot) {
  nfsm_chain_add_32(error, &nmreq, NFS_OP_LOOKUPP);
 } else {
  nfsm_chain_add_32(error, &nmreq, NFS_OP_LOOKUP);
  nfsm_chain_add_name(error, &nmreq, name, namelen, nmp);
 }
 numops--;
 nfsm_chain_add_32(error, &nmreq, NFS_OP_GETFH);
 numops--;
 nfsm_chain_add_32(error, &nmreq, NFS_OP_GETATTR);
 NFS_COPY_ATTRIBUTES(nfs_getattr_bitmap, bitmap);

 if ((dnp->n_flag & NISDOTZFS) && !isdotdot)
  NFS_BITMAP_CLR(bitmap, NFS_FATTR_NAMED_ATTR);
 if ((dnp->n_flag & NISDOTZFSCHILD) && isdotdot)
  NFS_BITMAP_CLR(bitmap, NFS_FATTR_NAMED_ATTR);
 if (((namelen == 4) && (name[0] == '.') && (name[1] == 'z') && (name[2] == 'f') && (name[3] == 's')))
  NFS_BITMAP_CLR(bitmap, NFS_FATTR_NAMED_ATTR);
 nfsm_chain_add_bitmap_supported(error, &nmreq, bitmap, nmp, ((void*)0));
 nfsm_chain_build_done(error, &nmreq);
 nfsm_assert(error, (numops == 0), EPROTO);
 nfsmout_if(error);
 error = nfs_request_async(dnp, ((void*)0), &nmreq, NFSPROC4_COMPOUND,
   vfs_context_thread(ctx), vfs_context_ucred(ctx), &si, 0, ((void*)0), reqp);
nfsmout:
 nfsm_chain_cleanup(&nmreq);
 return (error);
}
