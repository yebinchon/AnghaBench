
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* proc_t ;
struct TYPE_4__ {scalar_t__ p_pid; struct TYPE_4__* p_pptr; } ;


 TYPE_1__* current_proc () ;
 int proc_list_lock () ;
 int proc_list_unlock () ;

int
inferior(proc_t p)
{
 int retval = 0;

 proc_list_lock();
 for (; p != current_proc(); p = p->p_pptr)
  if (p->p_pid == 0)
   goto out;
 retval = 1;
out:
 proc_list_unlock();
 return(retval);
}
