
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;
typedef int vfs_context_t ;


 int nfs_vinvalbuf2 (int ,int,int ,int ,int) ;
 int vfs_context_thread (int ) ;
 int vfs_context_ucred (int ) ;

int
nfs_vinvalbuf(vnode_t vp, int flags, vfs_context_t ctx, int intrflg)
{
 return nfs_vinvalbuf2(vp, flags, vfs_context_thread(ctx), vfs_context_ucred(ctx), intrflg);
}
