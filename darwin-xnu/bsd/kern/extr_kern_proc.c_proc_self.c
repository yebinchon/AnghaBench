
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int dummy; } ;
typedef struct proc* proc_t ;


 struct proc* PROC_NULL ;
 struct proc* current_proc () ;
 int proc_list_lock () ;
 int proc_list_unlock () ;
 struct proc* proc_ref_locked (struct proc*) ;

proc_t
proc_self(void)
{
 struct proc * p;

 p = current_proc();

 proc_list_lock();
 if (p != proc_ref_locked(p))
  p = PROC_NULL;
 proc_list_unlock();
 return(p);
}
