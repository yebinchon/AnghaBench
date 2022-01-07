
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_2__* proc_t ;
struct TYPE_7__ {TYPE_1__* p_fd; } ;
struct TYPE_6__ {int * fd_rdir; } ;


 int proc_fdlock (TYPE_2__*) ;
 int proc_fdunlock (TYPE_2__*) ;

int
proc_chrooted(proc_t p)
{
 int retval = 0;

 if (p) {
  proc_fdlock(p);
  retval = (p->p_fd->fd_rdir != ((void*)0)) ? 1 : 0;
  proc_fdunlock(p);
 }

 return retval;
}
