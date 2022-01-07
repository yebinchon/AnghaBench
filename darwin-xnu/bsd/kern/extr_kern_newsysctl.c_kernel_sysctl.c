
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct sysctl_req {size_t oldlen; size_t newlen; int lock; size_t oldidx; int newfunc; int oldfunc; void* newptr; void* oldptr; struct proc* p; } ;
struct proc {int dummy; } ;


 void* CAST_USER_ADDR_T (void*) ;
 int ENOMEM ;
 int FALSE ;
 int TRUE ;
 int bzero (struct sysctl_req*,int) ;
 int sysctl_new_kernel ;
 int sysctl_old_kernel ;
 int sysctl_root (int ,int ,int *,int ,int*,int ,struct sysctl_req*) ;

int
kernel_sysctl(struct proc *p, int *name, u_int namelen, void *old, size_t *oldlenp, void *new, size_t newlen)
{
 int error = 0;
 struct sysctl_req req;




 bzero(&req, sizeof req);
 req.p = p;
 if (oldlenp)
  req.oldlen = *oldlenp;
 if (old)
  req.oldptr = CAST_USER_ADDR_T(old);
 if (newlen) {
  req.newlen = newlen;
  req.newptr = CAST_USER_ADDR_T(new);
 }
 req.oldfunc = sysctl_old_kernel;
 req.newfunc = sysctl_new_kernel;
 req.lock = 1;


 error = sysctl_root(TRUE, FALSE, ((void*)0), 0, name, namelen, &req);

 if (error && error != ENOMEM)
  return (error);

 if (oldlenp)
  *oldlenp = req.oldidx;

 return (error);
}
