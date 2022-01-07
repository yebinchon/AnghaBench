
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* proc_t ;
struct TYPE_4__ {scalar_t__ p_pid; struct TYPE_4__* p_pptr; } ;


 int nprocs ;
 int proc_list_lock () ;
 int proc_list_unlock () ;

int
isinferior(proc_t p, proc_t t)
{
 int retval = 0;
 int nchecked = 0;
 proc_t start = p;


 if (p == t)
  return(0);

 proc_list_lock();
 for (; p != t; p = p->p_pptr) {
  nchecked++;


  if ((p->p_pid == 0) || (p->p_pptr == start) || (nchecked >= nprocs))
   goto out;
 }
 retval = 1;
out:
 proc_list_unlock();
 return(retval);
}
