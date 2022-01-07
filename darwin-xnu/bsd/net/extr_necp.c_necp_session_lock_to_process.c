
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct necp_session_action_args {int dummy; } ;
struct necp_session {int proc_locked; } ;


 int TRUE ;

__attribute__((used)) static int
necp_session_lock_to_process(struct necp_session *session, struct necp_session_action_args *uap, int *retval)
{
#pragma unused(uap)
 session->proc_locked = TRUE;
 *retval = 0;
 return (0);
}
