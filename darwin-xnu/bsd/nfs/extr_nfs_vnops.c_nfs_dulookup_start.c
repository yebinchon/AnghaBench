
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vfs_context_t ;
struct nfsreq {int dummy; } ;
struct nfsmount {TYPE_1__* nm_funcs; } ;
struct TYPE_4__ {int cn_namelen; int cn_nameptr; } ;
struct nfs_dulookup {int du_flags; TYPE_2__ du_cn; struct nfsreq du_req; } ;
typedef int nfsnode_t ;
struct TYPE_3__ {int (* nf_lookup_rpc_async ) (int ,int ,int ,int ,struct nfsreq**) ;} ;


 struct nfsmount* NFSTONMP (int ) ;
 int NFS_DULOOKUP_DOIT ;
 int NFS_DULOOKUP_INPROG ;
 int stub1 (int ,int ,int ,int ,struct nfsreq**) ;

void
nfs_dulookup_start(struct nfs_dulookup *dulp, nfsnode_t dnp, vfs_context_t ctx)
{
 struct nfsmount *nmp = NFSTONMP(dnp);
 struct nfsreq *req = &dulp->du_req;

 if (!nmp || !(dulp->du_flags & NFS_DULOOKUP_DOIT) || (dulp->du_flags & NFS_DULOOKUP_INPROG))
  return;
 if (!nmp->nm_funcs->nf_lookup_rpc_async(dnp, dulp->du_cn.cn_nameptr,
   dulp->du_cn.cn_namelen, ctx, &req))
  dulp->du_flags |= NFS_DULOOKUP_INPROG;
}
