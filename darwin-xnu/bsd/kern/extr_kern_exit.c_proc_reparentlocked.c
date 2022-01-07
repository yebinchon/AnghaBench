
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_1__* proc_t ;
struct TYPE_9__ {scalar_t__ p_childrencnt; scalar_t__ p_stat; int p_pid; int p_ppid; struct TYPE_9__* p_pptr; int p_children; } ;


 int LIST_INSERT_HEAD (int *,TYPE_1__*,int ) ;
 int LIST_REMOVE (TYPE_1__*,int ) ;
 TYPE_1__* PROC_NULL ;
 int SIGCHLD ;
 scalar_t__ SZOMB ;
 TYPE_1__* initproc ;
 int p_sibling ;
 int panic (char*,...) ;
 int proc_list_lock () ;
 int proc_list_unlock () ;
 int psignal (TYPE_1__*,int ) ;

void
proc_reparentlocked(proc_t child, proc_t parent, int signallable, int locked)
{
 proc_t oldparent = PROC_NULL;

 if (child->p_pptr == parent)
  return;

 if (locked == 0)
  proc_list_lock();

 oldparent = child->p_pptr;





 LIST_REMOVE(child, p_sibling);




 oldparent->p_childrencnt--;




 LIST_INSERT_HEAD(&parent->p_children, child, p_sibling);
 parent->p_childrencnt++;
 child->p_pptr = parent;
 child->p_ppid = parent->p_pid;

 proc_list_unlock();

 if ((signallable != 0) && (initproc == parent) && (child->p_stat == SZOMB))
  psignal(initproc, SIGCHLD);
 if (locked == 1)
  proc_list_lock();
}
