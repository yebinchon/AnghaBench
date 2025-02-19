
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
struct nfsmount {int nm_minor_vers; } ;
struct nfsm_chain {int dummy; } ;
typedef TYPE_2__* nfsnode_t ;
struct TYPE_11__ {int nva_flags; } ;
struct TYPE_12__ {int n_size; int n_fhsize; int n_fhp; TYPE_1__ n_vattr; } ;


 int EINVAL ;
 int ENOENT ;
 int ENXIO ;
 int EPROTO ;
 int NFSPROC4_COMPOUND ;
 int NFSREQ_SECINFO_SET (struct nfsreq_secinfo_args*,TYPE_2__*,int *,int ,int *,int ) ;
 struct nfsmount* NFSTONMP (TYPE_2__*) ;
 int NFSX_UNSIGNED ;
 int NFS_FFLAG_TRIGGER_REFERRAL ;
 int NFS_OP_GETATTR ;
 int NFS_OP_PUTFH ;
 int NFS_OP_READLINK ;
 int NFS_VER4 ;
 int nfs_getattr_bitmap ;
 scalar_t__ nfs_mount_gone (struct nfsmount*) ;
 int nfs_node_lock (TYPE_2__*) ;
 int nfs_node_unlock (TYPE_2__*) ;
 int nfs_request (TYPE_2__*,int *,struct nfsm_chain*,int ,int ,struct nfsreq_secinfo_args*,struct nfsm_chain*,int *,int*) ;
 int nfsm_assert (int,int,int ) ;
 int nfsm_chain_add_32 (int,struct nfsm_chain*,int ) ;
 int nfsm_chain_add_bitmap_supported (int,struct nfsm_chain*,int ,struct nfsmount*,TYPE_2__*) ;
 int nfsm_chain_add_compound_header (int,struct nfsm_chain*,char*,int ,int) ;
 int nfsm_chain_add_fh (int,struct nfsm_chain*,int ,int ,int ) ;
 int nfsm_chain_build_alloc_init (int,struct nfsm_chain*,int) ;
 int nfsm_chain_build_done (int,struct nfsm_chain*) ;
 int nfsm_chain_cleanup (struct nfsm_chain*) ;
 int nfsm_chain_get_32 (int,struct nfsm_chain*,int) ;
 int nfsm_chain_get_opaque (int,struct nfsm_chain*,int,char*) ;
 int nfsm_chain_loadattr (int,struct nfsm_chain*,TYPE_2__*,int ,int *) ;
 int nfsm_chain_null (struct nfsm_chain*) ;
 int nfsm_chain_op_check (int,struct nfsm_chain*,int ) ;
 int nfsm_chain_skip_tag (int,struct nfsm_chain*) ;
 int nfsmout_if (int) ;

int
nfs4_readlink_rpc(nfsnode_t np, char *buf, uint32_t *buflenp, vfs_context_t ctx)
{
 struct nfsmount *nmp;
 int error = 0, lockerror = ENOENT, status, numops;
 uint32_t len = 0;
 u_int64_t xid;
 struct nfsm_chain nmreq, nmrep;
 struct nfsreq_secinfo_args si;

 nmp = NFSTONMP(np);
 if (nfs_mount_gone(nmp))
  return (ENXIO);
 if (np->n_vattr.nva_flags & NFS_FFLAG_TRIGGER_REFERRAL)
  return (EINVAL);
 NFSREQ_SECINFO_SET(&si, np, ((void*)0), 0, ((void*)0), 0);
 nfsm_chain_null(&nmreq);
 nfsm_chain_null(&nmrep);


 numops = 3;
 nfsm_chain_build_alloc_init(error, &nmreq, 16 * NFSX_UNSIGNED);
 nfsm_chain_add_compound_header(error, &nmreq, "readlink", nmp->nm_minor_vers, numops);
 numops--;
 nfsm_chain_add_32(error, &nmreq, NFS_OP_PUTFH);
 nfsm_chain_add_fh(error, &nmreq, NFS_VER4, np->n_fhp, np->n_fhsize);
 numops--;
 nfsm_chain_add_32(error, &nmreq, NFS_OP_GETATTR);
 nfsm_chain_add_bitmap_supported(error, &nmreq, nfs_getattr_bitmap, nmp, np);
 numops--;
 nfsm_chain_add_32(error, &nmreq, NFS_OP_READLINK);
 nfsm_chain_build_done(error, &nmreq);
 nfsm_assert(error, (numops == 0), EPROTO);
 nfsmout_if(error);
 error = nfs_request(np, ((void*)0), &nmreq, NFSPROC4_COMPOUND, ctx, &si, &nmrep, &xid, &status);

 if ((lockerror = nfs_node_lock(np)))
  error = lockerror;
 nfsm_chain_skip_tag(error, &nmrep);
 nfsm_chain_get_32(error, &nmrep, numops);
 nfsm_chain_op_check(error, &nmrep, NFS_OP_PUTFH);
 nfsm_chain_op_check(error, &nmrep, NFS_OP_GETATTR);
 nfsm_chain_loadattr(error, &nmrep, np, NFS_VER4, &xid);
 nfsm_chain_op_check(error, &nmrep, NFS_OP_READLINK);
 nfsm_chain_get_32(error, &nmrep, len);
 nfsmout_if(error);
 if (len >= *buflenp) {
  if (np->n_size && (np->n_size < *buflenp))
   len = np->n_size;
  else
   len = *buflenp - 1;
 }
 nfsm_chain_get_opaque(error, &nmrep, len, buf);
 if (!error)
  *buflenp = len;
nfsmout:
 if (!lockerror)
  nfs_node_unlock(np);
 nfsm_chain_cleanup(&nmreq);
 nfsm_chain_cleanup(&nmrep);
 return (error);
}
