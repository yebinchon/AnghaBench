
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;
typedef int vfs_context_t ;
struct vnode_attr {int dummy; } ;
struct nfs_open_file {int dummy; } ;
struct componentname {int dummy; } ;


 int nfs4_open_rpc_internal (struct nfs_open_file*,int ,int ,int ,struct componentname*,struct vnode_attr*,int ,int *,int,int,int) ;
 int vfs_context_thread (int ) ;
 int vfs_context_ucred (int ) ;

int
nfs4_open_rpc(
 struct nfs_open_file *nofp,
 vfs_context_t ctx,
 struct componentname *cnp,
 struct vnode_attr *vap,
 vnode_t dvp,
 vnode_t *vpp,
 int create,
 int share_access,
 int share_deny)
{
 return (nfs4_open_rpc_internal(nofp, ctx, vfs_context_thread(ctx), vfs_context_ucred(ctx),
     cnp, vap, dvp, vpp, create, share_access, share_deny));
}
