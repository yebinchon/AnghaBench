
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;
typedef int vfs_context_t ;
typedef int off_t ;
typedef int caddr_t ;


 int IO_NODELOCKED ;
 int IO_UNIT ;
 int UIO_SYSSPACE ;
 int UIO_WRITE ;
 int vfs_context_proc (int ) ;
 int vfs_context_ucred (int ) ;
 int vn_rdwr (int ,int ,int ,size_t,int ,int ,int,int ,int*,int ) ;

__attribute__((used)) static int
kdbg_write_to_vnode(caddr_t buffer, size_t size, vnode_t vp, vfs_context_t ctx, off_t file_offset)
{
 return vn_rdwr(UIO_WRITE, vp, buffer, size, file_offset, UIO_SYSSPACE, IO_NODELOCKED|IO_UNIT,
   vfs_context_ucred(ctx), (int *) 0, vfs_context_proc(ctx));
}
