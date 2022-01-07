
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int64_t ;
struct nfsmount {int nm_mountp; int nm_clientid; int nm_minor_vers; int nm_mcred; } ;
struct nfsm_chain {int dummy; } ;
typedef int kauth_cred_t ;


 int EPROTO ;
 scalar_t__ IS_VALID_CRED (int ) ;
 int NFSPROC4_COMPOUND ;
 int NFSX_UNSIGNED ;
 int NFS_OP_RENEW ;
 int current_thread () ;
 int kauth_cred_ref (int ) ;
 int kauth_cred_unref (int *) ;
 int nfs_request2 (int *,int ,struct nfsm_chain*,int ,int ,int ,int *,int,struct nfsm_chain*,int *,int*) ;
 int nfsm_assert (int,int,int ) ;
 int nfsm_chain_add_32 (int,struct nfsm_chain*,int ) ;
 int nfsm_chain_add_64 (int,struct nfsm_chain*,int ) ;
 int nfsm_chain_add_compound_header (int,struct nfsm_chain*,char*,int ,int) ;
 int nfsm_chain_build_alloc_init (int,struct nfsm_chain*,int) ;
 int nfsm_chain_build_done (int,struct nfsm_chain*) ;
 int nfsm_chain_cleanup (struct nfsm_chain*) ;
 int nfsm_chain_get_32 (int,struct nfsm_chain*,int) ;
 int nfsm_chain_null (struct nfsm_chain*) ;
 int nfsm_chain_op_check (int,struct nfsm_chain*,int ) ;
 int nfsm_chain_skip_tag (int,struct nfsm_chain*) ;
 int nfsmout_if (int) ;
 int vfs_context_kernel () ;
 int vfs_context_ucred (int ) ;

int
nfs4_renew(struct nfsmount *nmp, int rpcflag)
{
 int error = 0, status, numops;
 u_int64_t xid;
 struct nfsm_chain nmreq, nmrep;
 kauth_cred_t cred;

 cred = IS_VALID_CRED(nmp->nm_mcred) ? nmp->nm_mcred : vfs_context_ucred(vfs_context_kernel());
 kauth_cred_ref(cred);

 nfsm_chain_null(&nmreq);
 nfsm_chain_null(&nmrep);


 numops = 1;
 nfsm_chain_build_alloc_init(error, &nmreq, 8 * NFSX_UNSIGNED);
 nfsm_chain_add_compound_header(error, &nmreq, "renew", nmp->nm_minor_vers, numops);
 numops--;
 nfsm_chain_add_32(error, &nmreq, NFS_OP_RENEW);
 nfsm_chain_add_64(error, &nmreq, nmp->nm_clientid);
 nfsm_chain_build_done(error, &nmreq);
 nfsm_assert(error, (numops == 0), EPROTO);
 nfsmout_if(error);
 error = nfs_request2(((void*)0), nmp->nm_mountp, &nmreq, NFSPROC4_COMPOUND,
   current_thread(), cred, ((void*)0), rpcflag, &nmrep, &xid, &status);
 nfsm_chain_skip_tag(error, &nmrep);
 nfsm_chain_get_32(error, &nmrep, numops);
 nfsm_chain_op_check(error, &nmrep, NFS_OP_RENEW);
nfsmout:
 nfsm_chain_cleanup(&nmreq);
 nfsm_chain_cleanup(&nmrep);
 kauth_cred_unref(&cred);
 return (error);
}
