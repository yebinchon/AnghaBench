
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vfs_context_t ;
typedef int u_int ;
struct proc {int dummy; } ;
struct gfp_crarg {scalar_t__ gca_guard; int gca_attrs; } ;
struct fileproc {int dummy; } ;
typedef scalar_t__ guardid_t ;
typedef int crarg ;


 int EINVAL ;
 int GUARD_ALL ;
 int GUARD_REQUIRED ;
 int bzero (struct gfp_crarg*,int) ;
 int falloc_withalloc (struct proc*,struct fileproc**,int*,int ,int ,struct gfp_crarg*) ;
 int guarded_fileproc_alloc_init ;

int
falloc_guarded(struct proc *p, struct fileproc **fp, int *fd,
    vfs_context_t ctx, const guardid_t *guard, u_int attrs)
{
 struct gfp_crarg crarg;

 if (((attrs & GUARD_REQUIRED) != GUARD_REQUIRED) ||
     ((attrs & ~GUARD_ALL) != 0) || (*guard == 0))
  return (EINVAL);

 bzero(&crarg, sizeof (crarg));
 crarg.gca_guard = *guard;
 crarg.gca_attrs = attrs;

 return (falloc_withalloc(p, fp, fd, ctx, guarded_fileproc_alloc_init,
     &crarg));
}
