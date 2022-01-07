
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* proc_t ;
typedef scalar_t__ pid_t ;
struct TYPE_7__ {int p_memstat_state; } ;


 int EINVAL ;
 int EPERM ;
 int ESRCH ;
 TYPE_1__* PROC_NULL ;
 int P_MEMSTAT_FREEZE_DISABLED ;
 TYPE_1__* current_proc () ;
 TYPE_1__* proc_find (scalar_t__) ;
 int proc_list_lock () ;
 int proc_list_unlock () ;
 int proc_rele (TYPE_1__*) ;
 int proc_rele_locked (TYPE_1__*) ;

__attribute__((used)) static int
memorystatus_get_process_is_freezable(pid_t pid, int *is_freezable)
{
 proc_t p = PROC_NULL;

 if (pid == 0) {
  return EINVAL;
 }

 p = proc_find(pid);
 if (!p) {
  return ESRCH;
 }





 if (p != current_proc()) {
  proc_rele(p);
  return EPERM;
 }

 proc_list_lock();
 *is_freezable = ((p->p_memstat_state & P_MEMSTAT_FREEZE_DISABLED) ? 0 : 1);
 proc_rele_locked(p);
 proc_list_unlock();

 return 0;
}
