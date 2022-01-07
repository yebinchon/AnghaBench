
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_11__ ;


typedef int vfs_context_t ;
typedef int u_int64_t ;
struct nfsmount {TYPE_1__* nm_funcs; } ;
struct nfs_vattr {int dummy; } ;
struct TYPE_18__ {int cn_nameptr; int cn_namelen; } ;
struct TYPE_22__ {int r_auth; } ;
struct nfs_dulookup {int du_flags; TYPE_11__ du_cn; int du_smallname; TYPE_5__ du_req; } ;
typedef TYPE_2__* nfsnode_t ;
struct TYPE_21__ {int fh_len; int fh_data; } ;
typedef TYPE_3__ fhandle_t ;
struct TYPE_20__ {int n_flag; } ;
struct TYPE_19__ {int (* nf_lookup_rpc_async_finish ) (TYPE_2__*,int ,int ,int ,TYPE_5__*,int *,TYPE_3__*,struct nfs_vattr*) ;} ;


 int ENOENT ;
 int FREE (int ,int ) ;
 int M_TEMP ;
 int NFSTOMP (TYPE_2__*) ;
 struct nfsmount* NFSTONMP (TYPE_2__*) ;
 int NFSTOV (TYPE_2__*) ;
 int NFS_DULOOKUP_INPROG ;
 int NG_MAKEENTRY ;
 int NNEGNCENTRIES ;
 int NVATTR_CLEANUP (struct nfs_vattr*) ;
 int NVATTR_INIT (struct nfs_vattr*) ;
 int cache_enter (int ,int *,TYPE_11__*) ;
 int nfs_nget (int ,TYPE_2__*,TYPE_11__*,int ,int ,struct nfs_vattr*,int *,int ,int ,TYPE_2__**) ;
 int nfs_node_lock_force (TYPE_2__*) ;
 int nfs_node_unlock (TYPE_2__*) ;
 int nfs_request_async_cancel (TYPE_5__*) ;
 int stub1 (TYPE_2__*,int ,int ,int ,TYPE_5__*,int *,TYPE_3__*,struct nfs_vattr*) ;
 int vnode_put (int ) ;

void
nfs_dulookup_finish(struct nfs_dulookup *dulp, nfsnode_t dnp, vfs_context_t ctx)
{
 struct nfsmount *nmp = NFSTONMP(dnp);
 int error;
 nfsnode_t du_np;
 u_int64_t xid;
 fhandle_t fh;
 struct nfs_vattr nvattr;

 if (!nmp || !(dulp->du_flags & NFS_DULOOKUP_INPROG))
  goto out;

 NVATTR_INIT(&nvattr);
 error = nmp->nm_funcs->nf_lookup_rpc_async_finish(dnp, dulp->du_cn.cn_nameptr,
   dulp->du_cn.cn_namelen, ctx, &dulp->du_req, &xid, &fh, &nvattr);
 dulp->du_flags &= ~NFS_DULOOKUP_INPROG;
 if (error == ENOENT) {

  nfs_node_lock_force(dnp);
  cache_enter(NFSTOV(dnp), ((void*)0), &dulp->du_cn);
  dnp->n_flag |= NNEGNCENTRIES;
  nfs_node_unlock(dnp);
 } else if (!error) {
  error = nfs_nget(NFSTOMP(dnp), dnp, &dulp->du_cn, fh.fh_data, fh.fh_len,
       &nvattr, &xid, dulp->du_req.r_auth, NG_MAKEENTRY, &du_np);
  if (!error) {
   nfs_node_unlock(du_np);
   vnode_put(NFSTOV(du_np));
  }
 }
 NVATTR_CLEANUP(&nvattr);
out:
 if (dulp->du_flags & NFS_DULOOKUP_INPROG)
  nfs_request_async_cancel(&dulp->du_req);
 if (dulp->du_cn.cn_nameptr && (dulp->du_cn.cn_nameptr != dulp->du_smallname))
  FREE(dulp->du_cn.cn_nameptr, M_TEMP);
}
