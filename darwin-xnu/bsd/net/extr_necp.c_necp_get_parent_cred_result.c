
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * task_t ;
struct necp_socket_info {int cred_result; } ;
typedef int * proc_t ;
typedef int * kauth_cred_t ;
typedef int errno_t ;
typedef int * coalition_t ;
typedef scalar_t__ Boolean ;


 int * COALITION_NULL ;
 int COALITION_TYPE_JETSAM ;
 int PRIV_NET_PRIVILEGED_NECP_MATCH ;
 scalar_t__ TRUE ;
 int * coalition_get_leader (int *) ;
 scalar_t__ coalition_is_leader (int *,int ,int **) ;
 int * current_proc () ;
 int * get_bsdtask_info (int *) ;
 int * kauth_cred_proc_ref (int *) ;
 int kauth_cred_unref (int **) ;
 int priv_check_cred (int *,int ,int ) ;
 int * proc_task (int *) ;
 int task_deallocate (int *) ;

__attribute__((used)) static inline void
necp_get_parent_cred_result(proc_t proc, struct necp_socket_info *info)
{
 task_t task = proc_task(proc ? proc : current_proc());
 coalition_t coal = COALITION_NULL;
 Boolean is_leader = coalition_is_leader(task, COALITION_TYPE_JETSAM, &coal);

 if (is_leader == TRUE) {

  return;
 }

 if (coal != ((void*)0)) {
  task_t lead_task = coalition_get_leader(coal);
  if (lead_task != ((void*)0)) {
   proc_t lead_proc = get_bsdtask_info(lead_task);
   if (lead_proc != ((void*)0)) {
    kauth_cred_t lead_cred = kauth_cred_proc_ref(lead_proc);
    if (lead_cred != ((void*)0)) {
     errno_t cred_result = priv_check_cred(lead_cred, PRIV_NET_PRIVILEGED_NECP_MATCH, 0);
     kauth_cred_unref(&lead_cred);
     info->cred_result = cred_result;
    }
   }
   task_deallocate(lead_task);
  }
 }
}
