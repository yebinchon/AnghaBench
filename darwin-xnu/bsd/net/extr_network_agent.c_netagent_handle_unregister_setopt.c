
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int u_int32_t ;
struct netagent_session {int dummy; } ;
typedef int errno_t ;


 int EINVAL ;
 int LOG_ERR ;
 int NETAGENTLOG0 (int ,char*) ;
 int netagent_unregister_session_wrapper (struct netagent_session*) ;

__attribute__((used)) static errno_t
netagent_handle_unregister_setopt(struct netagent_session *session, u_int8_t *payload,
          u_int32_t payload_length)
{
#pragma unused(payload, payload_length)
 u_int32_t response_error = 0;

 if (session == ((void*)0)) {
  NETAGENTLOG0(LOG_ERR, "Failed to find session");
  response_error = EINVAL;
  goto done;
 }

 netagent_unregister_session_wrapper(session);

done:
 return response_error;
}
