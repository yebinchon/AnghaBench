
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct necp_session_action_args {int dummy; } ;
struct necp_session {int dummy; } ;


 int necp_policy_apply_all (struct necp_session*) ;

__attribute__((used)) static int
necp_session_apply_all(struct necp_session *session, struct necp_session_action_args *uap, int *retval)
{
#pragma unused(uap)
 necp_policy_apply_all(session);
 *retval = 0;
 return (0);
}
