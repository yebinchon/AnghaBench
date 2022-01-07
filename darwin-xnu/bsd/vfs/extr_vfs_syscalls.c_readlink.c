
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct readlink_args {int count; int buf; int path; } ;
typedef int proc_t ;
typedef int int32_t ;
typedef enum uio_seg { ____Placeholder_uio_seg } uio_seg ;


 int AT_FDCWD ;
 int CAST_USER_ADDR_T (int ) ;
 scalar_t__ IS_64BIT_PROCESS (int ) ;
 int UIO_USERSPACE32 ;
 int UIO_USERSPACE64 ;
 int readlinkat_internal (int ,int ,int ,int,int ,int ,int,int *) ;
 int vfs_context_current () ;

int
readlink(proc_t p, struct readlink_args *uap, int32_t *retval)
{
 enum uio_seg procseg;

 procseg = IS_64BIT_PROCESS(p) ? UIO_USERSPACE64 : UIO_USERSPACE32;
 return (readlinkat_internal(vfs_context_current(), AT_FDCWD,
     CAST_USER_ADDR_T(uap->path), procseg, CAST_USER_ADDR_T(uap->buf),
     uap->count, procseg, retval));
}
