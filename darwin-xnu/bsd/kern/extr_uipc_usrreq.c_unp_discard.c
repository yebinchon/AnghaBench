
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fileproc {int dummy; } ;
struct fileglob {int fg_lflags; } ;


 int FG_RMMSGQ ;
 int OSAddAtomic (int,int *) ;
 int VERIFY (int) ;
 int closef_locked (struct fileproc*,struct fileglob*,void*) ;
 void* current_proc () ;
 int fg_removeuipc (struct fileglob*) ;
 scalar_t__ fg_removeuipc_mark (struct fileglob*) ;
 int proc_fdlock (void*) ;
 int proc_fdunlock (void*) ;
 int unp_disposed ;
 int unp_rights ;

__attribute__((used)) static void
unp_discard(struct fileglob *fg, void *p)
{
 if (p == ((void*)0))
  p = current_proc();

 (void) OSAddAtomic(1, &unp_disposed);
 if (fg_removeuipc_mark(fg)) {
  VERIFY(fg->fg_lflags & FG_RMMSGQ);
  fg_removeuipc(fg);
 }
 (void) OSAddAtomic(-1, &unp_rights);

 proc_fdlock(p);
 (void) closef_locked((struct fileproc *)0, fg, p);
 proc_fdunlock(p);
}
