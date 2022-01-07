
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct necp_session_policy {scalar_t__ pending_deletion; } ;
struct necp_session_action_args {int in_buffer_length; scalar_t__ in_buffer; } ;
struct necp_session {int dummy; } ;
typedef int necp_policy_id ;
typedef int delete_policy_id ;


 int EINVAL ;
 int ENOENT ;
 int LOG_ERR ;
 int NECPLOG (int ,char*,int) ;
 int copyin (scalar_t__,int*,int) ;
 struct necp_session_policy* necp_policy_find (struct necp_session*,int) ;
 int necp_policy_mark_for_deletion (struct necp_session*,struct necp_session_policy*) ;

__attribute__((used)) static int
necp_session_delete_policy(struct necp_session *session, struct necp_session_action_args *uap, int *retval)
{
 int error = 0;

 if (uap->in_buffer_length < sizeof(necp_policy_id) || uap->in_buffer == 0) {
  NECPLOG(LOG_ERR, "necp_session_delete_policy invalid input (%zu)", uap->in_buffer_length);
  error = EINVAL;
  goto done;
 }

 necp_policy_id delete_policy_id = 0;
 error = copyin(uap->in_buffer, &delete_policy_id, sizeof(delete_policy_id));
 if (error != 0) {
  NECPLOG(LOG_ERR, "necp_session_delete_policy policy_id copyin error (%d)", error);
  goto done;
 }

 struct necp_session_policy *policy = necp_policy_find(session, delete_policy_id);
 if (policy == ((void*)0) || policy->pending_deletion) {
  NECPLOG(LOG_ERR, "necp_session_delete_policy failed to find policy with id %u", delete_policy_id);
  error = ENOENT;
  goto done;
 }

 necp_policy_mark_for_deletion(session, policy);
done:
 *retval = error;
 return (error);
}
