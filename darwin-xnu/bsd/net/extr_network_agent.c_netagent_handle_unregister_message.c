
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct netagent_session {int dummy; } ;
typedef int mbuf_t ;


 int LOG_ERR ;
 int NETAGENTLOG0 (int ,char*) ;
 int NETAGENT_MESSAGE_ERROR_INTERNAL ;
 int NETAGENT_MESSAGE_TYPE_UNREGISTER ;
 int netagent_send_error_response (struct netagent_session*,int ,int ,int ) ;
 int netagent_send_success_response (struct netagent_session*,int ,int ) ;
 int netagent_unregister_session_wrapper (struct netagent_session*) ;

__attribute__((used)) static void
netagent_handle_unregister_message(struct netagent_session *session, u_int32_t message_id,
           u_int32_t payload_length, mbuf_t packet, int offset)
{
#pragma unused(payload_length, packet, offset)
 u_int32_t response_error = NETAGENT_MESSAGE_ERROR_INTERNAL;

 if (session == ((void*)0)) {
  NETAGENTLOG0(LOG_ERR, "Failed to find session");
  response_error = NETAGENT_MESSAGE_ERROR_INTERNAL;
  goto fail;
 }

 netagent_unregister_session_wrapper(session);

 netagent_send_success_response(session, NETAGENT_MESSAGE_TYPE_UNREGISTER, message_id);
 return;
fail:
 netagent_send_error_response(session, NETAGENT_MESSAGE_TYPE_UNREGISTER, message_id, response_error);
}
