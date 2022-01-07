
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct necp_session_policy {int pending_deletion; } ;
struct necp_session {int dirty; } ;


 int FALSE ;
 int LOG_DEBUG ;
 int NECPLOG0 (int ,char*) ;
 int TRUE ;
 scalar_t__ necp_debug ;

__attribute__((used)) static bool
necp_policy_mark_for_deletion(struct necp_session *session, struct necp_session_policy *policy)
{
 if (session == ((void*)0) || policy == ((void*)0)) {
  return (FALSE);
 }

 policy->pending_deletion = TRUE;
 session->dirty = TRUE;

 if (necp_debug) {
  NECPLOG0(LOG_DEBUG, "Marked NECP policy for removal");
 }
 return (TRUE);
}
