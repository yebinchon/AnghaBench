
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int task_t ;
typedef scalar_t__ boolean_t ;


 int EACCES ;
 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 scalar_t__ force_all_ctrs ;
 int kpc_calling_pm ;
 scalar_t__ kpc_get_force_all_ctrs () ;
 int kpc_pm_handler (scalar_t__) ;
 int kpc_task_get_forced_all_ctrs (int ) ;
 int kpc_task_set_forced_all_ctrs (int ,scalar_t__) ;

int
kpc_force_all_ctrs(task_t task, int val)
{
 boolean_t new_state = val ? TRUE : FALSE;
 boolean_t old_state = kpc_get_force_all_ctrs();





 if (kpc_get_force_all_ctrs() && !kpc_task_get_forced_all_ctrs(task))
  return EACCES;


 if (old_state == new_state)
  return 0;


 if (kpc_pm_handler) {



  kpc_pm_handler( new_state ? FALSE : TRUE );



 }





 if (force_all_ctrs != new_state) {
  force_all_ctrs = new_state;
 }


 kpc_task_set_forced_all_ctrs(task, new_state);

 return 0;
}
