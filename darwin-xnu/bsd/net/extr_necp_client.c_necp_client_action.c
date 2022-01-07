
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct proc {int dummy; } ;
struct necp_fd_data {int dummy; } ;
struct necp_client_action_args {int action; int necp_fd; } ;


 int EINVAL ;
 int LOG_ERR ;
 int NECPLOG (int ,char*,int) ;
 int file_drop (int ) ;
 int necp_client_add (struct proc*,struct necp_fd_data*,struct necp_client_action_args*,int*) ;
 int necp_client_agent_action (struct necp_fd_data*,struct necp_client_action_args*,int*) ;
 int necp_client_agent_use (struct necp_fd_data*,struct necp_client_action_args*,int*) ;
 int necp_client_copy (struct necp_fd_data*,struct necp_client_action_args*,int*) ;
 int necp_client_copy_agent (struct necp_fd_data*,struct necp_client_action_args*,int*) ;
 int necp_client_copy_client_update (struct necp_fd_data*,struct necp_client_action_args*,int*) ;
 int necp_client_copy_interface (struct necp_fd_data*,struct necp_client_action_args*,int*) ;
 int necp_client_copy_route_statistics (struct necp_fd_data*,struct necp_client_action_args*,int*) ;
 int necp_client_list (struct necp_fd_data*,struct necp_client_action_args*,int*) ;
 int necp_client_remove (struct necp_fd_data*,struct necp_client_action_args*,int*) ;
 int necp_client_update_cache (struct necp_fd_data*,struct necp_client_action_args*,int*) ;
 int necp_find_fd_data (int ,struct necp_fd_data**) ;

int
necp_client_action(struct proc *p, struct necp_client_action_args *uap, int *retval)
{
#pragma unused(p)
 int error = 0;
 int return_value = 0;
 struct necp_fd_data *fd_data = ((void*)0);
 error = necp_find_fd_data(uap->necp_fd, &fd_data);
 if (error != 0) {
  NECPLOG(LOG_ERR, "necp_client_action find fd error (%d)", error);
  return (error);
 }

 u_int32_t action = uap->action;
 switch (action) {
  case 140: {
   return_value = necp_client_add(p, fd_data, uap, retval);
   break;
  }
  case 129: {
   return_value = necp_client_remove(fd_data, uap, retval);
   break;
  }
  case 133:
  case 132:
  case 130: {
   return_value = necp_client_copy(fd_data, uap, retval);
   break;
  }
  case 134: {
   return_value = necp_client_list(fd_data, uap, retval);
   break;
  }
  case 139: {
   return_value = necp_client_agent_action(fd_data, uap, retval);
   break;
  }
  case 137: {
   return_value = necp_client_copy_agent(fd_data, uap, retval);
   break;
  }
  case 138: {
   return_value = necp_client_agent_use(fd_data, uap, retval);
   break;
  }
  case 135: {
   return_value = necp_client_copy_interface(fd_data, uap, retval);
   break;
  }
  case 131: {
   return_value = necp_client_copy_route_statistics(fd_data, uap, retval);
   break;
  }
  case 128: {
   return_value = necp_client_update_cache(fd_data, uap, retval);
   break;
  }
  case 136: {
   return_value = necp_client_copy_client_update(fd_data, uap, retval);
   break;
  }
  default: {
   NECPLOG(LOG_ERR, "necp_client_action unknown action (%u)", action);
   return_value = EINVAL;
   break;
  }
 }

 file_drop(uap->necp_fd);

 return (return_value);
}
