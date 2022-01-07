
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int dummy; } ;
struct fileproc {int dummy; } ;


 int fp_drop (struct proc*,int,struct fileproc*,int) ;
 int proc_fdlock_spin (struct proc*) ;
 int proc_fdunlock (struct proc*) ;

void
donefileread(struct proc *p, struct fileproc *fp, int fd)
{
 proc_fdlock_spin(p);
 fp_drop(p, fd, fp, 1);
        proc_fdunlock(p);
}
