
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct guarded_kqueue_np_args {int guardflags; int guard; } ;
struct gfp_crarg {int gca_attrs; scalar_t__ gca_guard; } ;
typedef int proc_t ;
typedef int int32_t ;


 int EINVAL ;
 int GUARD_ALL ;
 int GUARD_REQUIRED ;
 int copyin (int ,scalar_t__*,int) ;
 int guarded_fileproc_alloc_init ;
 int kqueue_body (int ,int ,struct gfp_crarg*,int *) ;

int
guarded_kqueue_np(proc_t p, struct guarded_kqueue_np_args *uap, int32_t *retval)
{
 if (((uap->guardflags & GUARD_REQUIRED) != GUARD_REQUIRED) ||
     ((uap->guardflags & ~GUARD_ALL) != 0))
  return (EINVAL);

 int error;
 struct gfp_crarg crarg = {
  .gca_attrs = uap->guardflags
 };

 if ((error = copyin(uap->guard,
     &(crarg.gca_guard), sizeof (crarg.gca_guard))) != 0)
  return (error);

 if (crarg.gca_guard == 0)
  return (EINVAL);

 return (kqueue_body(p, guarded_fileproc_alloc_init, &crarg, retval));
}
