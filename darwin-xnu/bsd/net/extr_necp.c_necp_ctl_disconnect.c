
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct necp_session {int dummy; } ;
typedef int kern_ctl_ref ;
typedef int errno_t ;


 int necp_delete_session (struct necp_session*) ;
 int necp_policy_apply_all (struct necp_session*) ;
 int necp_policy_mark_all_for_deletion (struct necp_session*) ;

__attribute__((used)) static errno_t
necp_ctl_disconnect(kern_ctl_ref kctlref, u_int32_t unit, void *unitinfo)
{
#pragma unused(kctlref, unit)
 struct necp_session *session = (struct necp_session *)unitinfo;
 if (session != ((void*)0)) {
  necp_policy_mark_all_for_deletion(session);
  necp_policy_apply_all(session);
  necp_delete_session((struct necp_session *)unitinfo);
 }

 return (0);
}
