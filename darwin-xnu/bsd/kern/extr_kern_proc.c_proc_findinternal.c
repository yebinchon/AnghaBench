
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ proc_t ;


 scalar_t__ PROC_NULL ;
 scalar_t__ pfind_locked (int) ;
 int proc_list_lock () ;
 int proc_list_unlock () ;
 scalar_t__ proc_ref_locked (scalar_t__) ;

proc_t
proc_findinternal(int pid, int locked)
{
 proc_t p = PROC_NULL;

 if (locked == 0) {
  proc_list_lock();
 }

 p = pfind_locked(pid);
 if ((p == PROC_NULL) || (p != proc_ref_locked(p)))
  p = PROC_NULL;

 if (locked == 0) {
  proc_list_unlock();
 }

 return(p);
}
