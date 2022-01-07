
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;
typedef int vfs_context_t ;
typedef int uint64_t ;
typedef int caddr_t ;


 int IO_NODELOCKED ;
 int UIO_SYSSPACE ;
 int UIO_WRITE ;
 int vfs_context_kernel () ;
 int vfs_context_proc (int ) ;
 int vfs_context_ucred (int ) ;
 int vn_rdwr (int ,int ,int ,int,int ,int ,int ,int ,int*,int ) ;

int
vm_record_file_write(vnode_t vp, uint64_t offset, char *buf, int size)
{
 int error = 0;
 vfs_context_t ctx;

 ctx = vfs_context_kernel();

 error = vn_rdwr(UIO_WRITE, vp, (caddr_t)buf, size, offset,
  UIO_SYSSPACE, IO_NODELOCKED, vfs_context_ucred(ctx), (int *) 0, vfs_context_proc(ctx));

 return (error);
}
