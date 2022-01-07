
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kern_direct_file_io_ref_t {int ctx; int vp; } ;
typedef int off_t ;


 int IO_NODELOCKED ;
 int IO_SYNC ;
 int IO_UNIT ;
 int UIO_READ ;
 int UIO_SYSSPACE ;
 int vfs_context_proc (int ) ;
 int vfs_context_ucred (int ) ;
 int vn_rdwr (int ,int ,void*,size_t,int ,int ,int,int ,int*,int ) ;

int
kern_read_file(struct kern_direct_file_io_ref_t * ref, off_t offset, void * addr, size_t len, int ioflag)
{
    return (vn_rdwr(UIO_READ, ref->vp,
   addr, len, offset,
   UIO_SYSSPACE, ioflag|IO_SYNC|IO_NODELOCKED|IO_UNIT,
                        vfs_context_ucred(ref->ctx), (int *) 0,
   vfs_context_proc(ref->ctx)));
}
