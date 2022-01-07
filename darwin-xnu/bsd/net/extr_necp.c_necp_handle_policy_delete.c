
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct necp_session_policy {scalar_t__ pending_deletion; } ;
struct necp_session {int dummy; } ;
typedef int policy_id ;
typedef int necp_policy_id ;
typedef int mbuf_t ;


 int LOG_ERR ;
 int NECPLOG (int ,char*,int) ;
 int NECP_ERROR_INTERNAL ;
 int NECP_ERROR_INVALID_TLV ;
 int NECP_ERROR_POLICY_ID_NOT_FOUND ;
 int NECP_PACKET_TYPE_POLICY_DELETE ;
 int NECP_TLV_POLICY_ID ;
 int necp_get_tlv (int ,int *,int ,int,int ,int,int*,int *) ;
 struct necp_session_policy* necp_policy_find (struct necp_session*,int) ;
 int necp_policy_mark_for_deletion (struct necp_session*,struct necp_session_policy*) ;
 int necp_send_error_response (struct necp_session*,int ,int ,int ) ;
 int necp_send_success_response (struct necp_session*,int ,int ) ;

__attribute__((used)) static void
necp_handle_policy_delete(struct necp_session *session, u_int32_t message_id, mbuf_t packet, int offset)
{
 int error;
 u_int32_t response_error = NECP_ERROR_INTERNAL;
 necp_policy_id policy_id = 0;

 struct necp_session_policy *policy = ((void*)0);


 error = necp_get_tlv(packet, ((void*)0), 0, offset, NECP_TLV_POLICY_ID, sizeof(policy_id), &policy_id, ((void*)0));
 if (error) {
  NECPLOG(LOG_ERR, "Failed to get policy id: %d", error);
  response_error = NECP_ERROR_INVALID_TLV;
  goto fail;
 }

 policy = necp_policy_find(session, policy_id);
 if (policy == ((void*)0) || policy->pending_deletion) {
  NECPLOG(LOG_ERR, "Failed to find policy with id %d", policy_id);
  response_error = NECP_ERROR_POLICY_ID_NOT_FOUND;
  goto fail;
 }

 necp_policy_mark_for_deletion(session, policy);

 necp_send_success_response(session, NECP_PACKET_TYPE_POLICY_DELETE, message_id);
 return;

fail:
 necp_send_error_response(session, NECP_PACKET_TYPE_POLICY_DELETE, message_id, response_error);
}
