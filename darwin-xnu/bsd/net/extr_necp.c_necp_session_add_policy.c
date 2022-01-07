
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct necp_session_action_args {int in_buffer_length; scalar_t__ in_buffer; int out_buffer_length; int out_buffer; } ;
struct necp_session {int dummy; } ;
typedef int new_policy_id ;
typedef int necp_policy_id ;


 int EINVAL ;
 int ENOMEM ;
 int FREE (int *,int ) ;
 int LOG_ERR ;
 int M_NECP ;
 int M_WAITOK ;
 int M_ZERO ;
 int NECPLOG (int ,char*,int) ;
 int NECP_MAX_POLICY_SIZE ;
 int * _MALLOC (int,int ,int) ;
 int copyin (scalar_t__,int *,int) ;
 int copyout (int *,int ,int) ;
 int necp_handle_policy_add (struct necp_session*,int ,int *,int *,int,int ,int*) ;

__attribute__((used)) static int
necp_session_add_policy(struct necp_session *session, struct necp_session_action_args *uap, int *retval)
{
 int error = 0;
 u_int8_t *tlv_buffer = ((void*)0);

 if (uap->in_buffer_length == 0 || uap->in_buffer_length > NECP_MAX_POLICY_SIZE || uap->in_buffer == 0) {
  NECPLOG(LOG_ERR, "necp_session_add_policy invalid input (%zu)", uap->in_buffer_length);
  error = EINVAL;
  goto done;
 }

 if (uap->out_buffer_length < sizeof(necp_policy_id) || uap->out_buffer == 0) {
  NECPLOG(LOG_ERR, "necp_session_add_policy invalid output buffer (%zu)", uap->out_buffer_length);
  error = EINVAL;
  goto done;
 }

 if ((tlv_buffer = _MALLOC(uap->in_buffer_length, M_NECP, M_WAITOK | M_ZERO)) == ((void*)0)) {
  error = ENOMEM;
  goto done;
 }

 error = copyin(uap->in_buffer, tlv_buffer, uap->in_buffer_length);
 if (error != 0) {
  NECPLOG(LOG_ERR, "necp_session_add_policy tlv copyin error (%d)", error);
  goto done;
 }

 necp_policy_id new_policy_id = necp_handle_policy_add(session, 0, ((void*)0), tlv_buffer, uap->in_buffer_length, 0, &error);
 if (error != 0) {
  NECPLOG(LOG_ERR, "necp_session_add_policy failed to add policy (%d)", error);
  goto done;
 }

 error = copyout(&new_policy_id, uap->out_buffer, sizeof(new_policy_id));
 if (error != 0) {
  NECPLOG(LOG_ERR, "necp_session_add_policy policy_id copyout error (%d)", error);
  goto done;
 }

done:
 if (tlv_buffer != ((void*)0)) {
  FREE(tlv_buffer, M_NECP);
  tlv_buffer = ((void*)0);
 }
 *retval = error;

 return (error);
}
