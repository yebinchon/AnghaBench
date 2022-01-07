
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int dummy; } ;
struct kqueue {int dummy; } ;
struct fileproc {int f_flag; struct kqueue* f_data; int * f_ops; } ;
typedef int int32_t ;
typedef int fp_allocfn_t ;


 int ENOMEM ;
 int FREAD ;
 int FWRITE ;
 int UF_EXCLOSE ;
 int falloc_withalloc (struct proc*,struct fileproc**,int*,int ,int ,void*) ;
 int * fdflags (struct proc*,int) ;
 int fp_drop (struct proc*,int,struct fileproc*,int) ;
 int fp_free (struct proc*,int,struct fileproc*) ;
 struct kqueue* kqueue_alloc (struct proc*,int ) ;
 int kqueueops ;
 int proc_fdlock (struct proc*) ;
 int proc_fdunlock (struct proc*) ;
 int procfdtbl_releasefd (struct proc*,int,int *) ;
 int vfs_context_current () ;

int
kqueue_body(struct proc *p, fp_allocfn_t fp_zalloc, void *cra, int32_t *retval)
{
 struct kqueue *kq;
 struct fileproc *fp;
 int fd, error;

 error = falloc_withalloc(p,
     &fp, &fd, vfs_context_current(), fp_zalloc, cra);
 if (error) {
  return (error);
 }

 kq = kqueue_alloc(p, 0);
 if (kq == ((void*)0)) {
  fp_free(p, fd, fp);
  return (ENOMEM);
 }

 fp->f_flag = FREAD | FWRITE;
 fp->f_ops = &kqueueops;
 fp->f_data = kq;

 proc_fdlock(p);
 *fdflags(p, fd) |= UF_EXCLOSE;
 procfdtbl_releasefd(p, fd, ((void*)0));
 fp_drop(p, fd, fp, 1);
 proc_fdunlock(p);

 *retval = fd;
 return (error);
}
