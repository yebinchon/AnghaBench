
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct proc {int p_fpdrainwait; } ;


 int proc_fdlock (struct proc*) ;
 int proc_fdunlock (struct proc*) ;
 int seldrop_locked (struct proc*,int *,int,int,int*,int ) ;
 int wakeup (int *) ;

__attribute__((used)) static int
seldrop(struct proc *p, u_int32_t *ibits, int nfd)
{
 int error;
 int need_wakeup = 0;

 proc_fdlock(p);
 error = seldrop_locked(p, ibits, nfd, nfd, &need_wakeup, 0);
 proc_fdunlock(p);
 if (need_wakeup) {
  wakeup(&p->p_fpdrainwait);
 }
 return (error);
}
