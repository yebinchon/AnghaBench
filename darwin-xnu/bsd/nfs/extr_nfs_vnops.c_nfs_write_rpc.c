
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vfs_context_t ;
typedef int uio_t ;
typedef int uint64_t ;
typedef int nfsnode_t ;


 int nfs_write_rpc2 (int ,int ,int ,int ,int*,int *) ;
 int vfs_context_thread (int ) ;
 int vfs_context_ucred (int ) ;

int
nfs_write_rpc(
 nfsnode_t np,
 uio_t uio,
 vfs_context_t ctx,
 int *iomodep,
 uint64_t *wverfp)
{
 return nfs_write_rpc2(np, uio, vfs_context_thread(ctx), vfs_context_ucred(ctx), iomodep, wverfp);
}
