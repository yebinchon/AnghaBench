
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int u_char ;
typedef int thread_t ;
struct nfsreq_secinfo_args {int dummy; } ;
struct nfsmount {int nm_vers; int nm_minor_vers; } ;
struct nfsm_chain {int dummy; } ;
struct nfs_vattr {int dummy; } ;
struct nfs_open_owner {int noo_seqid; } ;
typedef int nfsnode_t ;
typedef int nfs_stateid ;
typedef int kauth_cred_t ;


 int EPROTO ;
 int NFSPROC4_COMPOUND ;
 int NFSREQ_SECINFO_SET (struct nfsreq_secinfo_args*,int ,int *,int ,int *,int ) ;
 int NFSX_UNSIGNED ;
 int NFS_OP_GETATTR ;
 int NFS_OP_OPEN_CONFIRM ;
 int NFS_OP_PUTFH ;
 int R_NOINTR ;
 int nfs4_parsefattr (struct nfsm_chain*,int *,struct nfs_vattr*,int *,int *,int *) ;
 int nfs_getattr_bitmap ;
 int nfs_owner_seqid_increment (struct nfs_open_owner*,int *,int) ;
 int nfs_request2 (int ,int *,struct nfsm_chain*,int ,int ,int ,struct nfsreq_secinfo_args*,int ,struct nfsm_chain*,int *,int*) ;
 int nfsm_assert (int,int,int ) ;
 int nfsm_chain_add_32 (int,struct nfsm_chain*,int ) ;
 int nfsm_chain_add_bitmap_supported (int,struct nfsm_chain*,int ,struct nfsmount*,int ) ;
 int nfsm_chain_add_compound_header (int,struct nfsm_chain*,char*,int ,int) ;
 int nfsm_chain_add_fh (int,struct nfsm_chain*,int ,int *,int) ;
 int nfsm_chain_add_stateid (int,struct nfsm_chain*,int *) ;
 int nfsm_chain_build_alloc_init (int,struct nfsm_chain*,int) ;
 int nfsm_chain_build_done (int,struct nfsm_chain*) ;
 int nfsm_chain_cleanup (struct nfsm_chain*) ;
 int nfsm_chain_get_32 (int,struct nfsm_chain*,int) ;
 int nfsm_chain_get_stateid (int,struct nfsm_chain*,int *) ;
 int nfsm_chain_null (struct nfsm_chain*) ;
 int nfsm_chain_op_check (int,struct nfsm_chain*,int ) ;
 int nfsm_chain_skip_tag (int,struct nfsm_chain*) ;
 int nfsmout_if (int) ;

int
nfs4_open_confirm_rpc(
 struct nfsmount *nmp,
 nfsnode_t dnp,
 u_char *fhp,
 int fhlen,
 struct nfs_open_owner *noop,
 nfs_stateid *sid,
 thread_t thd,
 kauth_cred_t cred,
 struct nfs_vattr *nvap,
 uint64_t *xidp)
{
 struct nfsm_chain nmreq, nmrep;
 int error = 0, status, numops;
 struct nfsreq_secinfo_args si;

 NFSREQ_SECINFO_SET(&si, dnp, ((void*)0), 0, ((void*)0), 0);
 nfsm_chain_null(&nmreq);
 nfsm_chain_null(&nmrep);


 numops = 3;
 nfsm_chain_build_alloc_init(error, &nmreq, 23 * NFSX_UNSIGNED);
 nfsm_chain_add_compound_header(error, &nmreq, "open_confirm", nmp->nm_minor_vers, numops);
 numops--;
 nfsm_chain_add_32(error, &nmreq, NFS_OP_PUTFH);
 nfsm_chain_add_fh(error, &nmreq, nmp->nm_vers, fhp, fhlen);
 numops--;
 nfsm_chain_add_32(error, &nmreq, NFS_OP_OPEN_CONFIRM);
 nfsm_chain_add_stateid(error, &nmreq, sid);
 nfsm_chain_add_32(error, &nmreq, noop->noo_seqid);
 numops--;
 nfsm_chain_add_32(error, &nmreq, NFS_OP_GETATTR);
 nfsm_chain_add_bitmap_supported(error, &nmreq, nfs_getattr_bitmap, nmp, dnp);
 nfsm_chain_build_done(error, &nmreq);
 nfsm_assert(error, (numops == 0), EPROTO);
 nfsmout_if(error);
 error = nfs_request2(dnp, ((void*)0), &nmreq, NFSPROC4_COMPOUND, thd, cred, &si, R_NOINTR, &nmrep, xidp, &status);

 nfsm_chain_skip_tag(error, &nmrep);
 nfsm_chain_get_32(error, &nmrep, numops);
 nfsm_chain_op_check(error, &nmrep, NFS_OP_PUTFH);
 nfsmout_if(error);
 nfsm_chain_op_check(error, &nmrep, NFS_OP_OPEN_CONFIRM);
 nfs_owner_seqid_increment(noop, ((void*)0), error);
 nfsm_chain_get_stateid(error, &nmrep, sid);
 nfsm_chain_op_check(error, &nmrep, NFS_OP_GETATTR);
 nfsmout_if(error);
 error = nfs4_parsefattr(&nmrep, ((void*)0), nvap, ((void*)0), ((void*)0), ((void*)0));
nfsmout:
 nfsm_chain_cleanup(&nmreq);
 nfsm_chain_cleanup(&nmrep);
 return (error);
}
