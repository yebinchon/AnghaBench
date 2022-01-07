
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int user_addr_t ;
typedef int uint32_t ;
typedef scalar_t__ task_t ;
typedef int reason ;
typedef TYPE_1__* proc_t ;
typedef int int32_t ;
typedef int coalition_t ;
struct TYPE_6__ {scalar_t__ task; } ;


 int COALITION_NULL ;
 int COALITION_TYPE_JETSAM ;


 int EPERM ;

 scalar_t__ FALSE ;
 int PROC_FGHW_DAEMON_LEADER ;
 int PROC_FGHW_DAEMON_NO_VOUCHER ;
 int PROC_FGHW_DAEMON_OK ;
 int PROC_FGHW_ERROR ;
 int PROC_FGHW_LEADER_BACKGROUND ;
 int PROC_FGHW_LEADER_NONUI ;
 int PROC_FGHW_NO_ORIGINATOR ;
 int PROC_FGHW_NO_VOUCHER_ATTR ;
 int PROC_FGHW_OK ;
 int PROC_FGHW_ORIGINATOR_BACKGROUND ;
 int PROC_FGHW_VOUCHER_ERROR ;
 int PROC_FLAG_APPLICATION ;
 TYPE_1__* PROC_NULL ;




 scalar_t__ TASK_NULL ;
 int TASK_POLICY_DARWIN_BG ;
 int TASK_POLICY_ROLE ;


 scalar_t__ coalition_get_leader (int ) ;
 scalar_t__ coalition_is_leader (scalar_t__,int ,int *) ;
 int copyout (int*,int ,int) ;
 TYPE_1__* current_proc () ;
 int kauth_cred_get () ;
 int kauth_cred_issuser (int ) ;
 TYPE_1__* proc_find (int) ;
 int proc_get_darwinbgstate (scalar_t__,int*) ;
 int proc_get_effective_task_policy (scalar_t__,int ) ;
 int proc_get_originatorbgstate (int*) ;
 int proc_rele (TYPE_1__*) ;
 int task_deallocate (scalar_t__) ;
 int task_reference (scalar_t__) ;

int proc_can_use_foreground_hw(int pid, user_addr_t u_reason, uint32_t reasonsize, int32_t *retval)
{
 proc_t p = PROC_NULL;
 int error = 0;
 uint32_t reason = PROC_FGHW_ERROR;
 uint32_t isBG = 0;
 task_t task = TASK_NULL;




 *retval = 0;

 if (pid <= 0) {
  error = 136;
  reason = PROC_FGHW_ERROR;
  goto out;
 }

 p = proc_find(pid);
 if (p == PROC_NULL) {
  error = 134;
  reason = PROC_FGHW_ERROR;
  goto out;
 }
 if (p != current_proc()) {
  error = 136;
  goto out;
 }
 isBG = 1;
 error = proc_get_originatorbgstate(&isBG);
 switch (error) {
 case 0:
  break;
 case 134:
  reason = PROC_FGHW_NO_ORIGINATOR;
  error = 0;
  goto out;
 case 135:
  reason = PROC_FGHW_NO_VOUCHER_ATTR;
  error = 0;
  goto out;
 case 136:
  reason = PROC_FGHW_DAEMON_NO_VOUCHER;
  error = 0;
  goto out;
 default:

  reason = PROC_FGHW_VOUCHER_ERROR;
  goto out;
 }

 if (isBG) {
  reason = PROC_FGHW_ORIGINATOR_BACKGROUND;
  error = 0;
 } else {





  reason = PROC_FGHW_DAEMON_OK;
  *retval = 1;
 }

out:
 if (task != TASK_NULL)
  task_deallocate(task);
 if (p != PROC_NULL)
  proc_rele(p);
 if (reasonsize >= sizeof(reason) && u_reason != (user_addr_t)0)
  (void)copyout(&reason, u_reason, sizeof(reason));
 return error;
}
