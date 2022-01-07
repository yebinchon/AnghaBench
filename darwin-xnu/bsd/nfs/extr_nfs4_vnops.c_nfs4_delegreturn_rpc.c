
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int u_char ;
typedef int thread_t ;
struct nfsreq_secinfo_args {int dummy; } ;
struct nfsmount {int nm_mountp; int nm_vers; int nm_minor_vers; } ;
struct nfsm_chain {int dummy; } ;
struct nfs_stateid {int dummy; } ;
typedef int kauth_cred_t ;


 int EPROTO ;
 int NFSPROC4_COMPOUND ;
 int NFSREQ_SECINFO_SET (struct nfsreq_secinfo_args*,int *,int *,int,int *,int ) ;
 int NFSX_UNSIGNED ;
 int NFS_OP_DELEGRETURN ;
 int NFS_OP_PUTFH ;
 int nfs_request2 (int *,int ,struct nfsm_chain*,int ,int ,int ,struct nfsreq_secinfo_args*,int,struct nfsm_chain*,int *,int*) ;
 int nfsm_assert (int,int,int ) ;
 int nfsm_chain_add_32 (int,struct nfsm_chain*,int ) ;
 int nfsm_chain_add_compound_header (int,struct nfsm_chain*,char*,int ,int) ;
 int nfsm_chain_add_fh (int,struct nfsm_chain*,int ,int *,int) ;
 int nfsm_chain_add_stateid (int,struct nfsm_chain*,struct nfs_stateid*) ;
 int nfsm_chain_build_alloc_init (int,struct nfsm_chain*,int) ;
 int nfsm_chain_build_done (int,struct nfsm_chain*) ;
 int nfsm_chain_cleanup (struct nfsm_chain*) ;
 int nfsm_chain_get_32 (int,struct nfsm_chain*,int) ;
 int nfsm_chain_null (struct nfsm_chain*) ;
 int nfsm_chain_op_check (int,struct nfsm_chain*,int ) ;
 int nfsm_chain_skip_tag (int,struct nfsm_chain*) ;
 int nfsmout_if (int) ;

int
nfs4_delegreturn_rpc(struct nfsmount *nmp, u_char *fhp, int fhlen, struct nfs_stateid *sid, int flags, thread_t thd, kauth_cred_t cred)
{
 int error = 0, status, numops;
 uint64_t xid;
 struct nfsm_chain nmreq, nmrep;
 struct nfsreq_secinfo_args si;

 NFSREQ_SECINFO_SET(&si, ((void*)0), fhp, fhlen, ((void*)0), 0);
 nfsm_chain_null(&nmreq);
 nfsm_chain_null(&nmrep);


 numops = 2;
 nfsm_chain_build_alloc_init(error, &nmreq, 16 * NFSX_UNSIGNED);
 nfsm_chain_add_compound_header(error, &nmreq, "delegreturn", nmp->nm_minor_vers, numops);
 numops--;
 nfsm_chain_add_32(error, &nmreq, NFS_OP_PUTFH);
 nfsm_chain_add_fh(error, &nmreq, nmp->nm_vers, fhp, fhlen);
 numops--;
 nfsm_chain_add_32(error, &nmreq, NFS_OP_DELEGRETURN);
 nfsm_chain_add_stateid(error, &nmreq, sid);
 nfsm_chain_build_done(error, &nmreq);
 nfsm_assert(error, (numops == 0), EPROTO);
 nfsmout_if(error);
 error = nfs_request2(((void*)0), nmp->nm_mountp, &nmreq, NFSPROC4_COMPOUND, thd, cred, &si, flags, &nmrep, &xid, &status);
 nfsm_chain_skip_tag(error, &nmrep);
 nfsm_chain_get_32(error, &nmrep, numops);
 nfsm_chain_op_check(error, &nmrep, NFS_OP_PUTFH);
 nfsm_chain_op_check(error, &nmrep, NFS_OP_DELEGRETURN);
nfsmout:
 nfsm_chain_cleanup(&nmreq);
 nfsm_chain_cleanup(&nmrep);
 return (error);
}
