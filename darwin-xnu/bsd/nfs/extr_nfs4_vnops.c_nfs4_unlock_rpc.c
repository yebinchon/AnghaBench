
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint64_t ;
typedef int thread_t ;
struct nfsreq_secinfo_args {int dummy; } ;
struct nfsmount {int nm_minor_vers; } ;
struct nfsm_chain {int dummy; } ;
struct nfs_lock_owner {int nlo_stateid; int nlo_seqid; } ;
typedef TYPE_2__* nfsnode_t ;
typedef int kauth_cred_t ;
struct TYPE_11__ {int nva_flags; } ;
struct TYPE_12__ {int n_fhsize; int n_fhp; TYPE_1__ n_vattr; } ;


 int EINVAL ;
 int ENOENT ;
 int ENXIO ;
 int EPROTO ;
 int F_WRLCK ;
 int NFSPROC4_COMPOUND ;
 int NFSREQ_SECINFO_SET (struct nfsreq_secinfo_args*,TYPE_2__*,int *,int ,int *,int ) ;
 struct nfsmount* NFSTONMP (TYPE_2__*) ;
 int NFSX_UNSIGNED ;
 int NFS_FFLAG_TRIGGER_REFERRAL ;
 int NFS_LOCK_LENGTH (int ,int ) ;
 int NFS_LOCK_TYPE_READ ;
 int NFS_LOCK_TYPE_WRITE ;
 int NFS_OP_GETATTR ;
 int NFS_OP_LOCKU ;
 int NFS_OP_PUTFH ;
 int NFS_VER4 ;
 int R_NOINTR ;
 int nfs_getattr_bitmap ;
 int nfs_lock_owner_clear_busy (struct nfs_lock_owner*) ;
 int nfs_lock_owner_set_busy (struct nfs_lock_owner*,int *) ;
 scalar_t__ nfs_mount_gone (struct nfsmount*) ;
 int nfs_node_lock (TYPE_2__*) ;
 int nfs_node_unlock (TYPE_2__*) ;
 int nfs_owner_seqid_increment (int *,struct nfs_lock_owner*,int) ;
 int nfs_request2 (TYPE_2__*,int *,struct nfsm_chain*,int ,int ,int ,struct nfsreq_secinfo_args*,int,struct nfsm_chain*,int *,int*) ;
 int nfsm_assert (int,int,int ) ;
 int nfsm_chain_add_32 (int,struct nfsm_chain*,int ) ;
 int nfsm_chain_add_64 (int,struct nfsm_chain*,int ) ;
 int nfsm_chain_add_bitmap_supported (int,struct nfsm_chain*,int ,struct nfsmount*,TYPE_2__*) ;
 int nfsm_chain_add_compound_header (int,struct nfsm_chain*,char*,int ,int) ;
 int nfsm_chain_add_fh (int,struct nfsm_chain*,int ,int ,int ) ;
 int nfsm_chain_add_stateid (int,struct nfsm_chain*,int *) ;
 int nfsm_chain_build_alloc_init (int,struct nfsm_chain*,int) ;
 int nfsm_chain_build_done (int,struct nfsm_chain*) ;
 int nfsm_chain_cleanup (struct nfsm_chain*) ;
 int nfsm_chain_get_32 (int,struct nfsm_chain*,int) ;
 int nfsm_chain_get_stateid (int,struct nfsm_chain*,int *) ;
 int nfsm_chain_loadattr (int,struct nfsm_chain*,TYPE_2__*,int ,int *) ;
 int nfsm_chain_null (struct nfsm_chain*) ;
 int nfsm_chain_op_check (int,struct nfsm_chain*,int ) ;
 int nfsm_chain_skip_tag (int,struct nfsm_chain*) ;
 int nfsmout_if (int) ;

int
nfs4_unlock_rpc(
 nfsnode_t np,
 struct nfs_lock_owner *nlop,
 int type,
 uint64_t start,
 uint64_t end,
 int flags,
 thread_t thd,
 kauth_cred_t cred)
{
 struct nfsmount *nmp;
 struct nfsm_chain nmreq, nmrep;
 uint64_t xid;
 int error = 0, lockerror = ENOENT, numops, status;
 struct nfsreq_secinfo_args si;

 nmp = NFSTONMP(np);
 if (nfs_mount_gone(nmp))
  return (ENXIO);
 if (np->n_vattr.nva_flags & NFS_FFLAG_TRIGGER_REFERRAL)
  return (EINVAL);

 error = nfs_lock_owner_set_busy(nlop, ((void*)0));
 if (error)
  return (error);

 NFSREQ_SECINFO_SET(&si, np, ((void*)0), 0, ((void*)0), 0);
 nfsm_chain_null(&nmreq);
 nfsm_chain_null(&nmrep);


 numops = 3;
 nfsm_chain_build_alloc_init(error, &nmreq, 26 * NFSX_UNSIGNED);
 nfsm_chain_add_compound_header(error, &nmreq, "unlock", nmp->nm_minor_vers, numops);
 numops--;
 nfsm_chain_add_32(error, &nmreq, NFS_OP_PUTFH);
 nfsm_chain_add_fh(error, &nmreq, NFS_VER4, np->n_fhp, np->n_fhsize);
 numops--;
 nfsm_chain_add_32(error, &nmreq, NFS_OP_GETATTR);
 nfsm_chain_add_bitmap_supported(error, &nmreq, nfs_getattr_bitmap, nmp, np);
 numops--;
 nfsm_chain_add_32(error, &nmreq, NFS_OP_LOCKU);
 nfsm_chain_add_32(error, &nmreq, (type == F_WRLCK) ? NFS_LOCK_TYPE_WRITE : NFS_LOCK_TYPE_READ);
 nfsm_chain_add_32(error, &nmreq, nlop->nlo_seqid);
 nfsm_chain_add_stateid(error, &nmreq, &nlop->nlo_stateid);
 nfsm_chain_add_64(error, &nmreq, start);
 nfsm_chain_add_64(error, &nmreq, NFS_LOCK_LENGTH(start, end));
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
 nfsm_chain_op_check(error, &nmrep, NFS_OP_GETATTR);
 nfsm_chain_loadattr(error, &nmrep, np, NFS_VER4, &xid);
 nfsmout_if(error);
 nfsm_chain_op_check(error, &nmrep, NFS_OP_LOCKU);
 nfs_owner_seqid_increment(((void*)0), nlop, error);
 nfsm_chain_get_stateid(error, &nmrep, &nlop->nlo_stateid);
nfsmout:
 if (!lockerror)
  nfs_node_unlock(np);
 nfs_lock_owner_clear_busy(nlop);
 nfsm_chain_cleanup(&nmreq);
 nfsm_chain_cleanup(&nmrep);
 return (error);
}
