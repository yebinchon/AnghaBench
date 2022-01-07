
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vfs_context_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int u_char ;
struct nfsreq_secinfo_args {int dummy; } ;
struct nfsreq {int dummy; } ;
struct nfsmount {int nm_mountp; int nm_minor_vers; } ;
struct nfsm_chain {int dummy; } ;
struct nfs_fs_locations {int dummy; } ;
typedef TYPE_1__* nfsnode_t ;
struct TYPE_4__ {int n_fhsize; int * n_fhp; } ;


 int EINVAL ;
 int EPROTO ;
 int NFSPROC4_COMPOUND ;
 int NFSREQ_SECINFO_SET (struct nfsreq_secinfo_args*,int *,int *,int,char const*,int ) ;
 int NFSX_UNSIGNED ;
 int NFS_ATTR_BITMAP_LEN ;
 int NFS_BITMAP_SET (int *,int ) ;
 int NFS_CLEAR_ATTRIBUTES (int *) ;
 int NFS_FATTR_FS_LOCATIONS ;
 int NFS_OP_GETATTR ;
 int NFS_OP_LOOKUP ;
 int NFS_OP_PUTFH ;
 int NFS_VER4 ;
 int nfs4_parsefattr (struct nfsm_chain*,int *,int *,int *,int *,struct nfs_fs_locations*) ;
 int nfs_request_async (TYPE_1__*,int ,struct nfsm_chain*,int ,int ,int ,struct nfsreq_secinfo_args*,int ,int *,struct nfsreq**) ;
 int nfs_request_async_finish (struct nfsreq*,struct nfsm_chain*,int *,int*) ;
 int nfsm_assert (int,int,int ) ;
 int nfsm_chain_add_32 (int,struct nfsm_chain*,int ) ;
 int nfsm_chain_add_bitmap (int,struct nfsm_chain*,int *,int) ;
 int nfsm_chain_add_compound_header (int,struct nfsm_chain*,char*,int ,int) ;
 int nfsm_chain_add_fh (int,struct nfsm_chain*,int ,int *,int) ;
 int nfsm_chain_add_name (int,struct nfsm_chain*,char const*,int ,struct nfsmount*) ;
 int nfsm_chain_build_alloc_init (int,struct nfsm_chain*,int) ;
 int nfsm_chain_build_done (int,struct nfsm_chain*) ;
 int nfsm_chain_cleanup (struct nfsm_chain*) ;
 int nfsm_chain_get_32 (int,struct nfsm_chain*,int) ;
 int nfsm_chain_null (struct nfsm_chain*) ;
 int nfsm_chain_op_check (int,struct nfsm_chain*,int ) ;
 int nfsm_chain_skip_tag (int,struct nfsm_chain*) ;
 int nfsmout_if (int) ;
 int strlen (char const*) ;
 int vfs_context_thread (int ) ;
 int vfs_context_ucred (int ) ;

int
nfs4_get_fs_locations(
 struct nfsmount *nmp,
 nfsnode_t dnp,
 u_char *fhp,
 int fhsize,
 const char *name,
 vfs_context_t ctx,
 struct nfs_fs_locations *nfslsp)
{
 int error = 0, numops, status;
 uint32_t bitmap[NFS_ATTR_BITMAP_LEN];
 struct nfsreq rq, *req = &rq;
 struct nfsreq_secinfo_args si;
 struct nfsm_chain nmreq, nmrep;
 uint64_t xid;

 if (!fhp && dnp) {
  fhp = dnp->n_fhp;
  fhsize = dnp->n_fhsize;
 }
 if (!fhp)
  return (EINVAL);

 nfsm_chain_null(&nmreq);
 nfsm_chain_null(&nmrep);

 NFSREQ_SECINFO_SET(&si, ((void*)0), fhp, fhsize, name, 0);
 numops = 3;
 nfsm_chain_build_alloc_init(error, &nmreq, 18 * NFSX_UNSIGNED);
 nfsm_chain_add_compound_header(error, &nmreq, "fs_locations", nmp->nm_minor_vers, numops);
 numops--;
 nfsm_chain_add_32(error, &nmreq, NFS_OP_PUTFH);
 nfsm_chain_add_fh(error, &nmreq, NFS_VER4, fhp, fhsize);
 numops--;
 nfsm_chain_add_32(error, &nmreq, NFS_OP_LOOKUP);
 nfsm_chain_add_name(error, &nmreq, name, strlen(name), nmp);
 numops--;
 nfsm_chain_add_32(error, &nmreq, NFS_OP_GETATTR);
 NFS_CLEAR_ATTRIBUTES(bitmap);
 NFS_BITMAP_SET(bitmap, NFS_FATTR_FS_LOCATIONS);
 nfsm_chain_add_bitmap(error, &nmreq, bitmap, NFS_ATTR_BITMAP_LEN);
 nfsm_chain_build_done(error, &nmreq);
 nfsm_assert(error, (numops == 0), EPROTO);
 nfsmout_if(error);
 error = nfs_request_async(dnp, nmp->nm_mountp, &nmreq, NFSPROC4_COMPOUND,
   vfs_context_thread(ctx), vfs_context_ucred(ctx), &si, 0, ((void*)0), &req);
 if (!error)
  error = nfs_request_async_finish(req, &nmrep, &xid, &status);
 nfsm_chain_skip_tag(error, &nmrep);
 nfsm_chain_get_32(error, &nmrep, numops);
 nfsm_chain_op_check(error, &nmrep, NFS_OP_PUTFH);
 nfsm_chain_op_check(error, &nmrep, NFS_OP_LOOKUP);
 nfsm_chain_op_check(error, &nmrep, NFS_OP_GETATTR);
 nfsmout_if(error);
 error = nfs4_parsefattr(&nmrep, ((void*)0), ((void*)0), ((void*)0), ((void*)0), nfslsp);
nfsmout:
 nfsm_chain_cleanup(&nmrep);
 nfsm_chain_cleanup(&nmreq);
 return (error);
}
