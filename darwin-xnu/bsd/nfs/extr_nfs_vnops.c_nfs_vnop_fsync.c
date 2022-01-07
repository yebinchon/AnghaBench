
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnop_fsync_args {int a_context; int a_waitfor; int a_vp; } ;


 int VTONFS (int ) ;
 int nfs_flush (int ,int ,int ,int ) ;
 int vfs_context_thread (int ) ;

int
nfs_vnop_fsync(
 struct vnop_fsync_args *ap)





{
 return (nfs_flush(VTONFS(ap->a_vp), ap->a_waitfor, vfs_context_thread(ap->a_context), 0));
}
