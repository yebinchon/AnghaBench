
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct necp_session {int proc_locked; } ;
typedef int mbuf_t ;


 int NECP_PACKET_TYPE_LOCK_SESSION_TO_PROC ;
 int TRUE ;
 int necp_send_success_response (struct necp_session*,int ,int ) ;

__attribute__((used)) static void
necp_handle_lock_session_to_proc(struct necp_session *session, u_int32_t message_id, mbuf_t packet, int offset)
{
#pragma unused(packet, offset)

 session->proc_locked = TRUE;
 necp_send_success_response(session, NECP_PACKET_TYPE_LOCK_SESSION_TO_PROC, message_id);
}
