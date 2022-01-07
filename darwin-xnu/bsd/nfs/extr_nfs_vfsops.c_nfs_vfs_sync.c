
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vfs_context_t ;
struct nfs_sync_cargs {int waitfor; int error; int ctx; } ;
typedef int mount_t ;


 int nfs_sync_callout ;
 int vnode_iterate (int ,int ,int ,struct nfs_sync_cargs*) ;

int
nfs_vfs_sync(mount_t mp, int waitfor, vfs_context_t ctx)
{
 struct nfs_sync_cargs cargs;

 cargs.waitfor = waitfor;
 cargs.ctx = ctx;
 cargs.error = 0;

 vnode_iterate(mp, 0, nfs_sync_callout, &cargs);

 return (cargs.error);
}
