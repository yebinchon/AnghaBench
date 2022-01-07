
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vfs_context_t ;
struct nfs_vattr {int dummy; } ;
typedef int nfsnode_t ;


 int ESTALE ;
 int nfs_getattr_internal (int ,struct nfs_vattr*,int ,int) ;
 int nfs_refresh_fh (int ,int ) ;

int
nfs_getattr(nfsnode_t np, struct nfs_vattr *nvap, vfs_context_t ctx, int flags)
{
 int error;

retry:
 error = nfs_getattr_internal(np, nvap, ctx, flags);
 if (error == ESTALE) {
  error = nfs_refresh_fh(np, ctx);
  if (!error)
   goto retry;
 }
 return (error);
}
