
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct necp_session {int dummy; } ;
typedef int mbuf_t ;


 int NECP_PACKET_TYPE_POLICY_DELETE_ALL ;
 int necp_policy_mark_all_for_deletion (struct necp_session*) ;
 int necp_send_success_response (struct necp_session*,int ,int ) ;

__attribute__((used)) static void
necp_handle_policy_delete_all(struct necp_session *session, u_int32_t message_id, mbuf_t packet, int offset)
{
#pragma unused(packet, offset)
 necp_policy_mark_all_for_deletion(session);
 necp_send_success_response(session, NECP_PACKET_TYPE_POLICY_DELETE_ALL, message_id);
}
