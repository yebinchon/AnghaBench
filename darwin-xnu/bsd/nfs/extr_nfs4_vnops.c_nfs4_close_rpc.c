
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef int u_int64_t ;
typedef int thread_t ;
struct nfsreq_secinfo_args {int dummy; } ;
struct nfsmount {int nm_vers; int nm_minor_vers; } ;
struct nfsm_chain {int dummy; } ;
struct nfs_open_owner {int noo_seqid; } ;
struct nfs_open_file {int nof_stateid; struct nfs_open_owner* nof_owner; } ;
typedef TYPE_1__* nfsnode_t ;
typedef int kauth_cred_t ;
struct TYPE_10__ {int n_fhsize; int n_fhp; } ;


 int ENOENT ;
 int ENXIO ;
 int EPROTO ;
 int NFSPROC4_COMPOUND ;
 int NFSREQ_SECINFO_SET (struct nfsreq_secinfo_args*,TYPE_1__*,int *,int ,int *,int ) ;
 struct nfsmount* NFSTONMP (TYPE_1__*) ;
 int NFSX_UNSIGNED ;
 int NFS_OP_CLOSE ;
 int NFS_OP_GETATTR ;
 int NFS_OP_PUTFH ;
 int R_NOINTR ;
 int nfs_getattr_bitmap ;
 scalar_t__ nfs_mount_gone (struct nfsmount*) ;
 int nfs_node_lock (TYPE_1__*) ;
 int nfs_node_unlock (TYPE_1__*) ;
 int nfs_open_owner_clear_busy (struct nfs_open_owner*) ;
 int nfs_open_owner_set_busy (struct nfs_open_owner*,int *) ;
 int nfs_owner_seqid_increment (struct nfs_open_owner*,int *,int) ;
 int nfs_request2 (TYPE_1__*,int *,struct nfsm_chain*,int ,int ,int ,struct nfsreq_secinfo_args*,int,struct nfsm_chain*,int *,int*) ;
 int nfsm_assert (int,int,int ) ;
 int nfsm_chain_add_32 (int,struct nfsm_chain*,int ) ;
 int nfsm_chain_add_bitmap_supported (int,struct nfsm_chain*,int ,struct nfsmount*,TYPE_1__*) ;
 int nfsm_chain_add_compound_header (int,struct nfsm_chain*,char*,int ,int) ;
 int nfsm_chain_add_fh (int,struct nfsm_chain*,int,int ,int ) ;
 int nfsm_chain_add_stateid (int,struct nfsm_chain*,int *) ;
 int nfsm_chain_build_alloc_init (int,struct nfsm_chain*,int) ;
 int nfsm_chain_build_done (int,struct nfsm_chain*) ;
 int nfsm_chain_cleanup (struct nfsm_chain*) ;
 int nfsm_chain_get_32 (int,struct nfsm_chain*,int) ;
 int nfsm_chain_get_stateid (int,struct nfsm_chain*,int *) ;
 int nfsm_chain_loadattr (int,struct nfsm_chain*,TYPE_1__*,int,int *) ;
 int nfsm_chain_null (struct nfsm_chain*) ;
 int nfsm_chain_op_check (int,struct nfsm_chain*,int ) ;
 int nfsm_chain_skip_tag (int,struct nfsm_chain*) ;
 int nfsmout_if (int) ;

int
nfs4_close_rpc(
 nfsnode_t np,
 struct nfs_open_file *nofp,
 thread_t thd,
 kauth_cred_t cred,
 int flags)
{
 struct nfs_open_owner *noop = nofp->nof_owner;
 struct nfsmount *nmp;
 int error, lockerror = ENOENT, status, nfsvers, numops;
 struct nfsm_chain nmreq, nmrep;
 u_int64_t xid;
 struct nfsreq_secinfo_args si;

 nmp = NFSTONMP(np);
 if (nfs_mount_gone(nmp))
  return (ENXIO);
 nfsvers = nmp->nm_vers;

 if ((error = nfs_open_owner_set_busy(noop, ((void*)0))))
  return (error);

 NFSREQ_SECINFO_SET(&si, np, ((void*)0), 0, ((void*)0), 0);
 nfsm_chain_null(&nmreq);
 nfsm_chain_null(&nmrep);


 numops = 3;
 nfsm_chain_build_alloc_init(error, &nmreq, 23 * NFSX_UNSIGNED);
 nfsm_chain_add_compound_header(error, &nmreq, "close", nmp->nm_minor_vers, numops);
 numops--;
 nfsm_chain_add_32(error, &nmreq, NFS_OP_PUTFH);
 nfsm_chain_add_fh(error, &nmreq, nfsvers, np->n_fhp, np->n_fhsize);
 numops--;
 nfsm_chain_add_32(error, &nmreq, NFS_OP_CLOSE);
 nfsm_chain_add_32(error, &nmreq, noop->noo_seqid);
 nfsm_chain_add_stateid(error, &nmreq, &nofp->nof_stateid);
 numops--;
 nfsm_chain_add_32(error, &nmreq, NFS_OP_GETATTR);
 nfsm_chain_add_bitmap_supported(error, &nmreq, nfs_getattr_bitmap, nmp, np);
 nfsm_chain_build_done(error, &nmreq);
 nfsm_assert(error, (numops == 0), EPROTO);
 nfsmout_if(error);
 error = nfs_request2(np, ((void*)0), &nmreq, NFSPROC4_COMPOUND, thd, cred, &si, flags|R_NOINTR, &nmrep, &xid, &status);

 if ((lockerror = nfs_node_lock(np)))
  error = lockerror;
 nfsm_chain_skip_tag(error, &nmrep);
 nfsm_chain_get_32(error, &nmrep, numops);
 nfsm_chain_op_check(error, &nmrep, NFS_OP_PUTFH);
 nfsmout_if(error);
 nfsm_chain_op_check(error, &nmrep, NFS_OP_CLOSE);
 nfs_owner_seqid_increment(noop, ((void*)0), error);
 nfsm_chain_get_stateid(error, &nmrep, &nofp->nof_stateid);
 nfsm_chain_op_check(error, &nmrep, NFS_OP_GETATTR);
 nfsm_chain_loadattr(error, &nmrep, np, nfsvers, &xid);
nfsmout:
 if (!lockerror)
  nfs_node_unlock(np);
 nfs_open_owner_clear_busy(noop);
 nfsm_chain_cleanup(&nmreq);
 nfsm_chain_cleanup(&nmrep);
 return (error);
}
