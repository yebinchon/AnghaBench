
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* proc_t ;
typedef scalar_t__ pid_t ;
struct TYPE_4__ {int p_memstat_state; } ;


 int EINVAL ;
 int ESRCH ;
 int P_MEMSTAT_MANAGED ;
 TYPE_1__* proc_find (scalar_t__) ;
 int proc_list_lock () ;
 int proc_list_unlock () ;
 int proc_rele_locked (TYPE_1__*) ;

__attribute__((used)) static int
memorystatus_get_process_is_managed(pid_t pid, int *is_managed)
{
 proc_t p = ((void*)0);


 if (pid == 0) {
  return EINVAL;
 }

 p = proc_find(pid);
 if (!p) {
  return ESRCH;
 }

 proc_list_lock();
 *is_managed = ((p->p_memstat_state & P_MEMSTAT_MANAGED) ? 1 : 0);
 proc_rele_locked(p);
 proc_list_unlock();

 return 0;
}
