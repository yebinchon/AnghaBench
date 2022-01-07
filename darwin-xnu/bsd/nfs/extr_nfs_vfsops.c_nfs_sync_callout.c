
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vnode_t ;
struct nfs_sync_cargs {int error; int ctx; int waitfor; } ;
typedef TYPE_1__* nfsnode_t ;
struct TYPE_4__ {int n_flag; scalar_t__ n_wrbusy; int n_bflag; int n_dirtyblkhd; } ;


 scalar_t__ LIST_EMPTY (int *) ;
 int NBFLUSHINPROG ;
 int NBINVALINPROG ;
 int NREVOKE ;
 int REVOKEALL ;
 int VNODE_RETURNED ;
 TYPE_1__* VTONFS (int ) ;
 int nfs_flush (TYPE_1__*,int ,int ,int ) ;
 int vfs_context_thread (int ) ;
 int vn_revoke (int ,int ,int ) ;

int
nfs_sync_callout(vnode_t vp, void *arg)
{
 struct nfs_sync_cargs *cargs = (struct nfs_sync_cargs*)arg;
 nfsnode_t np = VTONFS(vp);
 int error;

 if (np->n_flag & NREVOKE) {
  vn_revoke(vp, REVOKEALL, cargs->ctx);
  return (VNODE_RETURNED);
 }

 if (LIST_EMPTY(&np->n_dirtyblkhd))
  return (VNODE_RETURNED);
 if (np->n_wrbusy > 0)
  return (VNODE_RETURNED);
 if (np->n_bflag & (NBFLUSHINPROG|NBINVALINPROG))
  return (VNODE_RETURNED);

 error = nfs_flush(np, cargs->waitfor, vfs_context_thread(cargs->ctx), 0);
 if (error)
  cargs->error = error;

 return (VNODE_RETURNED);
}
