
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct readlinkat_args {int bufsize; int buf; int path; int fd; } ;
typedef int proc_t ;
typedef int int32_t ;
typedef enum uio_seg { ____Placeholder_uio_seg } uio_seg ;


 scalar_t__ IS_64BIT_PROCESS (int ) ;
 int UIO_USERSPACE32 ;
 int UIO_USERSPACE64 ;
 int readlinkat_internal (int ,int ,int ,int,int ,int ,int,int *) ;
 int vfs_context_current () ;

int
readlinkat(proc_t p, struct readlinkat_args *uap, int32_t *retval)
{
 enum uio_seg procseg;

 procseg = IS_64BIT_PROCESS(p) ? UIO_USERSPACE64 : UIO_USERSPACE32;
 return (readlinkat_internal(vfs_context_current(), uap->fd, uap->path,
     procseg, uap->buf, uap->bufsize, procseg, retval));
}
