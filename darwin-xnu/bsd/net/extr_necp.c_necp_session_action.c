
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uuid_t ;
typedef int u_int32_t ;
struct proc {int dummy; } ;
struct necp_session_action_args {int action; int necp_fd; } ;
struct necp_session {int proc_pid; int proc_uuid; scalar_t__ proc_locked; } ;
typedef int proc_uuid ;


 int EINVAL ;
 int EPERM ;
 int LOG_ERR ;
 int NECPLOG (int ,char*,int) ;
 int NECP_SESSION_LOCK (struct necp_session*) ;
 int NECP_SESSION_UNLOCK (struct necp_session*) ;
 int current_proc () ;
 int file_drop (int ) ;
 int necp_session_add_policy (struct necp_session*,struct necp_session_action_args*,int*) ;
 int necp_session_apply_all (struct necp_session*,struct necp_session_action_args*,int*) ;
 int necp_session_delete_all (struct necp_session*,struct necp_session_action_args*,int*) ;
 int necp_session_delete_policy (struct necp_session*,struct necp_session_action_args*,int*) ;
 int necp_session_dump_all (struct necp_session*,struct necp_session_action_args*,int*) ;
 int necp_session_find_from_fd (int ,struct necp_session**) ;
 int necp_session_get_policy (struct necp_session*,struct necp_session_action_args*,int*) ;
 int necp_session_list_all (struct necp_session*,struct necp_session_action_args*,int*) ;
 int necp_session_lock_to_process (struct necp_session*,struct necp_session_action_args*,int*) ;
 int necp_session_register_service (struct necp_session*,struct necp_session_action_args*,int*) ;
 int necp_session_set_session_priority (struct necp_session*,struct necp_session_action_args*,int*) ;
 int necp_session_unregister_service (struct necp_session*,struct necp_session_action_args*,int*) ;
 int proc_getexecutableuuid (int ,int ,int) ;
 int proc_pid (int ) ;
 scalar_t__ uuid_compare (int ,int ) ;

int
necp_session_action(struct proc *p, struct necp_session_action_args *uap, int *retval)
{
#pragma unused(p)
 int error = 0;
 int return_value = 0;
 struct necp_session *session = ((void*)0);
 error = necp_session_find_from_fd(uap->necp_fd, &session);
 if (error != 0) {
  NECPLOG(LOG_ERR, "necp_session_action find fd error (%d)", error);
  return (error);
 }

 NECP_SESSION_LOCK(session);

 if (session->proc_locked) {

  uuid_t proc_uuid;
  proc_getexecutableuuid(current_proc(), proc_uuid, sizeof(proc_uuid));
  if (uuid_compare(proc_uuid, session->proc_uuid) != 0) {
   error = EPERM;
   goto done;
  }
 } else {

  proc_getexecutableuuid(current_proc(), session->proc_uuid, sizeof(session->proc_uuid));
  session->proc_pid = proc_pid(current_proc());
 }

 u_int32_t action = uap->action;
 switch (action) {
  case 137: {
   return_value = necp_session_add_policy(session, uap, retval);
   break;
  }
  case 132: {
   return_value = necp_session_get_policy(session, uap, retval);
   break;
  }
  case 135: {
   return_value = necp_session_delete_policy(session, uap, retval);
   break;
  }
  case 136: {
   return_value = necp_session_apply_all(session, uap, retval);
   break;
  }
  case 131: {
   return_value = necp_session_list_all(session, uap, retval);
   break;
  }
  case 134: {
   return_value = necp_session_delete_all(session, uap, retval);
   break;
  }
  case 129: {
   return_value = necp_session_set_session_priority(session, uap, retval);
   break;
  }
  case 138: {
   return_value = necp_session_lock_to_process(session, uap, retval);
   break;
  }
  case 130: {
   return_value = necp_session_register_service(session, uap, retval);
   break;
  }
  case 128: {
   return_value = necp_session_unregister_service(session, uap, retval);
   break;
  }
  case 133: {
   return_value = necp_session_dump_all(session, uap, retval);
   break;
  }
  default: {
   NECPLOG(LOG_ERR, "necp_session_action unknown action (%u)", action);
   return_value = EINVAL;
   break;
  }
 }

done:
 NECP_SESSION_UNLOCK(session);
 file_drop(uap->necp_fd);

 return (return_value);
}
