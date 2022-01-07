
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* proc_t ;
typedef int boolean_t ;
struct TYPE_3__ {scalar_t__ p_pptr; } ;


 int FALSE ;
 int TRUE ;
 scalar_t__ current_proc () ;
 int proc_list_lock () ;
 int proc_list_unlock () ;

__attribute__((used)) static boolean_t
proc_parent_is_currentproc(proc_t p)
{
 boolean_t ret = FALSE;

 proc_list_lock();
 if (p->p_pptr == current_proc())
  ret = TRUE;

 proc_list_unlock();
 return ret;
}
