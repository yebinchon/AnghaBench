
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct necp_session_policy {int * route_rules; int * conditions; int * result; } ;
struct necp_session {int dummy; } ;


 int FALSE ;
 int FREE (int *,int ) ;
 int FREE_ZONE (struct necp_session_policy*,int,int ) ;
 int LIST_REMOVE (struct necp_session_policy*,int ) ;
 int LOG_DEBUG ;
 int M_NECP ;
 int M_NECP_SESSION_POLICY ;
 int NECPLOG0 (int ,char*) ;
 int TRUE ;
 int chain ;
 scalar_t__ necp_debug ;

__attribute__((used)) static bool
necp_policy_delete(struct necp_session *session, struct necp_session_policy *policy)
{
 if (session == ((void*)0) || policy == ((void*)0)) {
  return (FALSE);
 }

 LIST_REMOVE(policy, chain);

 if (policy->result) {
  FREE(policy->result, M_NECP);
  policy->result = ((void*)0);
 }

 if (policy->conditions) {
  FREE(policy->conditions, M_NECP);
  policy->conditions = ((void*)0);
 }

 if (policy->route_rules) {
  FREE(policy->route_rules, M_NECP);
  policy->route_rules = ((void*)0);
 }

 FREE_ZONE(policy, sizeof(*policy), M_NECP_SESSION_POLICY);

 if (necp_debug) {
  NECPLOG0(LOG_DEBUG, "Removed NECP policy");
 }
 return (TRUE);
}
