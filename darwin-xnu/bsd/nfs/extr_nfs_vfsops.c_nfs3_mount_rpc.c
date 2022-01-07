
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vfs_context_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int thread_t ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr_in6 {void* sin6_port; } ;
struct sockaddr_in {void* sin_port; } ;
struct sockaddr {scalar_t__ sa_family; int sa_len; } ;
struct nfsmount {scalar_t__ nm_mountport; } ;
struct nfsm_chain {int * nmc_mhead; } ;
struct nfs_sec {int count; int * flavors; } ;
typedef int ss ;
typedef int mbuf_t ;
typedef int kauth_cred_t ;
typedef int fhandle_t ;


 scalar_t__ AF_INET ;
 int EPROGUNAVAIL ;
 int IPPROTO_TCP ;
 int IPPROTO_UDP ;
 int MNTUDP ;
 scalar_t__ NFSX_UNSIGNED ;
 int NFS_VER2 ;
 scalar_t__ NM_OMFLAG (struct nfsmount*,int ) ;
 int NX_MAX_SEC_FLAVORS ;
 int RPCAUTH_SYS ;
 int RPCMNT_MOUNT ;
 int RPCMNT_VER1 ;
 int RPCMNT_VER3 ;
 int RPCPROG_MNT ;
 int R_XID32 (int ) ;
 int SOCK_DGRAM ;
 int SOCK_STREAM ;
 int bcopy (struct sockaddr*,struct sockaddr*,int ) ;
 void* htons (scalar_t__) ;
 int min (int,int ) ;
 int nfs_aux_request (struct nfsmount*,int ,struct sockaddr*,int *,int,int ,int ,int,int,struct nfsm_chain*) ;
 int nfs_portmap_lookup (struct nfsmount*,int ,struct sockaddr*,int *,int ,int,int,int) ;
 int nfsm_chain_add_name (int,struct nfsm_chain*,char*,int,struct nfsmount*) ;
 int nfsm_chain_build_alloc_init (int,struct nfsm_chain*,scalar_t__) ;
 int nfsm_chain_build_done (int,struct nfsm_chain*) ;
 int nfsm_chain_cleanup (struct nfsm_chain*) ;
 int nfsm_chain_get_32 (int,struct nfsm_chain*,int) ;
 int nfsm_chain_get_fh (int,struct nfsm_chain*,int,int *) ;
 int nfsm_chain_get_secinfo (struct nfsm_chain*,int *,int *) ;
 int nfsm_chain_null (struct nfsm_chain*) ;
 scalar_t__ nfsm_rndup (int) ;
 int nfsm_rpchead2 (struct nfsmount*,int,int ,int,int ,int ,int ,int *,int *,int *,int *) ;
 int nfsmout_if (int) ;
 int ntohs (void*) ;
 int strlen (char*) ;
 int vfs_context_thread (int ) ;
 int vfs_context_ucred (int ) ;

int
nfs3_mount_rpc(struct nfsmount *nmp, struct sockaddr *sa, int sotype, int nfsvers, char *path, vfs_context_t ctx, int timeo, fhandle_t *fh, struct nfs_sec *sec)
{
 int error = 0, slen, mntproto;
 thread_t thd = vfs_context_thread(ctx);
 kauth_cred_t cred = vfs_context_ucred(ctx);
 uint64_t xid = 0;
 struct nfsm_chain nmreq, nmrep;
 mbuf_t mreq;
 uint32_t mntvers, mntport, val;
 struct sockaddr_storage ss;
 struct sockaddr *saddr = (struct sockaddr*)&ss;

 nfsm_chain_null(&nmreq);
 nfsm_chain_null(&nmrep);

 mntvers = (nfsvers == NFS_VER2) ? RPCMNT_VER1 : RPCMNT_VER3;
 mntproto = (NM_OMFLAG(nmp, MNTUDP) || (sotype == SOCK_DGRAM)) ? IPPROTO_UDP : IPPROTO_TCP;
 sec->count = 0;

 bcopy(sa, saddr, min(sizeof(ss), sa->sa_len));
 if (saddr->sa_family == AF_INET) {
  if (nmp->nm_mountport)
   ((struct sockaddr_in*)saddr)->sin_port = htons(nmp->nm_mountport);
  mntport = ntohs(((struct sockaddr_in*)saddr)->sin_port);
 } else {
  if (nmp->nm_mountport)
   ((struct sockaddr_in6*)saddr)->sin6_port = htons(nmp->nm_mountport);
  mntport = ntohs(((struct sockaddr_in6*)saddr)->sin6_port);
 }

 while (!mntport) {
  error = nfs_portmap_lookup(nmp, ctx, saddr, ((void*)0), RPCPROG_MNT, mntvers, mntproto, timeo);
  nfsmout_if(error);
  if (saddr->sa_family == AF_INET)
   mntport = ntohs(((struct sockaddr_in*)saddr)->sin_port);
  else
   mntport = ntohs(((struct sockaddr_in6*)saddr)->sin6_port);
  if (!mntport) {

   if (mntproto == IPPROTO_UDP) {
    error = EPROGUNAVAIL;
    break;
   }
   mntproto = IPPROTO_UDP;
   bcopy(sa, saddr, min(sizeof(ss), sa->sa_len));
  }
 }
 nfsmout_if(error || !mntport);


 slen = strlen(path);
 nfsm_chain_build_alloc_init(error, &nmreq, NFSX_UNSIGNED + nfsm_rndup(slen));
 nfsm_chain_add_name(error, &nmreq, path, slen, nmp);
 nfsm_chain_build_done(error, &nmreq);
 nfsmout_if(error);
 error = nfsm_rpchead2(nmp, (mntproto == IPPROTO_UDP) ? SOCK_DGRAM : SOCK_STREAM,
   RPCPROG_MNT, mntvers, RPCMNT_MOUNT,
   RPCAUTH_SYS, cred, ((void*)0), nmreq.nmc_mhead, &xid, &mreq);
 nfsmout_if(error);
 nmreq.nmc_mhead = ((void*)0);
 error = nfs_aux_request(nmp, thd, saddr, ((void*)0),
   ((mntproto == IPPROTO_UDP) ? SOCK_DGRAM : SOCK_STREAM),
   mreq, R_XID32(xid), 1, timeo, &nmrep);
 nfsmout_if(error);
 nfsm_chain_get_32(error, &nmrep, val);
 if (!error && val)
  error = val;
 nfsm_chain_get_fh(error, &nmrep, nfsvers, fh);
 if (!error && (nfsvers > NFS_VER2)) {
  sec->count = NX_MAX_SEC_FLAVORS;
  error = nfsm_chain_get_secinfo(&nmrep, &sec->flavors[0], &sec->count);
 }
nfsmout:
 nfsm_chain_cleanup(&nmreq);
 nfsm_chain_cleanup(&nmrep);
 return (error);
}
