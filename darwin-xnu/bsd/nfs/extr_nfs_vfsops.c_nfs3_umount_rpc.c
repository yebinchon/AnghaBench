
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vfs_context_t ;
typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
typedef int thread_t ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr_in6 {void* sin6_port; } ;
struct sockaddr_in {void* sin_port; } ;
struct sockaddr {scalar_t__ sa_family; } ;
struct nfsmount {scalar_t__ nm_vers; scalar_t__ nm_sotype; scalar_t__ nm_mountport; int nm_mountp; TYPE_2__* nm_saddr; } ;
struct nfsm_chain {int * nmc_mhead; } ;
typedef int ss ;
typedef int mbuf_t ;
typedef int kauth_cred_t ;
struct TYPE_4__ {int sa_len; } ;
struct TYPE_3__ {char* f_mntfromname; } ;


 scalar_t__ AF_INET ;
 int IPPROTO_TCP ;
 int IPPROTO_UDP ;
 int MNTUDP ;
 scalar_t__ NFSX_UNSIGNED ;
 scalar_t__ NFS_VER2 ;
 scalar_t__ NM_OMFLAG (struct nfsmount*,int ) ;
 int RPCAUTH_SYS ;
 int RPCMNT_UMOUNT ;
 scalar_t__ RPCMNT_VER1 ;
 scalar_t__ RPCMNT_VER3 ;
 int RPCPROG_MNT ;
 int R_XID32 (int ) ;
 scalar_t__ SOCK_DGRAM ;
 scalar_t__ SOCK_STREAM ;
 int bcopy (TYPE_2__*,struct sockaddr*,int ) ;
 void* htons (scalar_t__) ;
 int min (int,int ) ;
 int nfs_aux_request (struct nfsmount*,int ,struct sockaddr*,int *,scalar_t__,int ,int ,int,int,struct nfsm_chain*) ;
 int nfs_portmap_lookup (struct nfsmount*,int ,struct sockaddr*,int *,int ,scalar_t__,int,int) ;
 int nfsm_chain_add_name (int,struct nfsm_chain*,char*,int,struct nfsmount*) ;
 int nfsm_chain_build_alloc_init (int,struct nfsm_chain*,scalar_t__) ;
 int nfsm_chain_build_done (int,struct nfsm_chain*) ;
 int nfsm_chain_cleanup (struct nfsm_chain*) ;
 int nfsm_chain_null (struct nfsm_chain*) ;
 scalar_t__ nfsm_rndup (int) ;
 int nfsm_rpchead2 (struct nfsmount*,scalar_t__,int ,scalar_t__,int ,int ,int ,int *,int *,int *,int *) ;
 int nfsmout_if (int) ;
 scalar_t__ ntohs (void*) ;
 int strlen (char*) ;
 int vfs_context_thread (int ) ;
 int vfs_context_ucred (int ) ;
 TYPE_1__* vfs_statfs (int ) ;

void
nfs3_umount_rpc(struct nfsmount *nmp, vfs_context_t ctx, int timeo)
{
 int error = 0, slen, mntproto;
 thread_t thd = vfs_context_thread(ctx);
 kauth_cred_t cred = vfs_context_ucred(ctx);
 char *path;
 uint64_t xid = 0;
 struct nfsm_chain nmreq, nmrep;
 mbuf_t mreq;
 uint32_t mntvers, mntport;
 struct sockaddr_storage ss;
 struct sockaddr *saddr = (struct sockaddr*)&ss;

 if (!nmp->nm_saddr)
  return;

 nfsm_chain_null(&nmreq);
 nfsm_chain_null(&nmrep);

 mntvers = (nmp->nm_vers == NFS_VER2) ? RPCMNT_VER1 : RPCMNT_VER3;
 mntproto = (NM_OMFLAG(nmp, MNTUDP) || (nmp->nm_sotype == SOCK_DGRAM)) ? IPPROTO_UDP : IPPROTO_TCP;
 mntport = nmp->nm_mountport;

 bcopy(nmp->nm_saddr, saddr, min(sizeof(ss), nmp->nm_saddr->sa_len));
 if (saddr->sa_family == AF_INET)
  ((struct sockaddr_in*)saddr)->sin_port = htons(mntport);
 else
  ((struct sockaddr_in6*)saddr)->sin6_port = htons(mntport);

 while (!mntport) {
  error = nfs_portmap_lookup(nmp, ctx, saddr, ((void*)0), RPCPROG_MNT, mntvers, mntproto, timeo);
    nfsmout_if(error);
  if (saddr->sa_family == AF_INET)
   mntport = ntohs(((struct sockaddr_in*)saddr)->sin_port);
  else
   mntport = ntohs(((struct sockaddr_in6*)saddr)->sin6_port);

  if (!mntport) {
   if (mntvers > RPCMNT_VER1) {
    mntvers = RPCMNT_VER1;
   } else if (mntproto == IPPROTO_TCP) {
    mntproto = IPPROTO_UDP;
    mntvers = (nmp->nm_vers == NFS_VER2) ? RPCMNT_VER1 : RPCMNT_VER3;
   } else {
    break;
   }
   bcopy(nmp->nm_saddr, saddr, min(sizeof(ss), nmp->nm_saddr->sa_len));
  }
 }
 nfsmout_if(!mntport);


 path = &vfs_statfs(nmp->nm_mountp)->f_mntfromname[0];
 while (*path && (*path != '/'))
  path++;
 slen = strlen(path);
 nfsm_chain_build_alloc_init(error, &nmreq, NFSX_UNSIGNED + nfsm_rndup(slen));
 nfsm_chain_add_name(error, &nmreq, path, slen, nmp);
 nfsm_chain_build_done(error, &nmreq);
 nfsmout_if(error);
 error = nfsm_rpchead2(nmp, (mntproto == IPPROTO_UDP) ? SOCK_DGRAM : SOCK_STREAM,
   RPCPROG_MNT, RPCMNT_VER1, RPCMNT_UMOUNT,
   RPCAUTH_SYS, cred, ((void*)0), nmreq.nmc_mhead, &xid, &mreq);
 nfsmout_if(error);
 nmreq.nmc_mhead = ((void*)0);
 error = nfs_aux_request(nmp, thd, saddr, ((void*)0),
  ((mntproto == IPPROTO_UDP) ? SOCK_DGRAM : SOCK_STREAM),
  mreq, R_XID32(xid), 1, timeo, &nmrep);
nfsmout:
 nfsm_chain_cleanup(&nmreq);
 nfsm_chain_cleanup(&nmrep);
}
