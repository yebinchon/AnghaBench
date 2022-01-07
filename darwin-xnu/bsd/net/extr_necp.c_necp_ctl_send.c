
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uuid_t ;
typedef int u_int32_t ;
struct necp_session {int proc_pid; int proc_uuid; scalar_t__ proc_locked; } ;
struct necp_packet_header {int packet_type; int message_id; } ;
typedef int proc_uuid ;
typedef int mbuf_t ;
typedef int kern_ctl_ref ;
typedef int header ;
typedef int errno_t ;


 int EINVAL ;
 int ENOBUFS ;
 int LOG_ERR ;
 int NECPLOG (int ,char*,int,...) ;
 int NECPLOG0 (int ,char*) ;
 int NECP_ERROR_INVALID_PROCESS ;
 int NECP_ERROR_UNKNOWN_PACKET_TYPE ;
 int current_proc () ;
 int mbuf_copydata (int ,int ,int,struct necp_packet_header*) ;
 int mbuf_freem (int ) ;
 int mbuf_pkthdr_len (int ) ;
 int necp_handle_lock_session_to_proc (struct necp_session*,int ,int ,int) ;
 int necp_handle_policy_add (struct necp_session*,int ,int ,int *,int ,int,int *) ;
 int necp_handle_policy_apply_all (struct necp_session*,int ,int ,int) ;
 int necp_handle_policy_delete (struct necp_session*,int ,int ,int) ;
 int necp_handle_policy_delete_all (struct necp_session*,int ,int ,int) ;
 int necp_handle_policy_dump_all (struct necp_session*,int ,int ,int ,int ,int) ;
 int necp_handle_policy_get (struct necp_session*,int ,int ,int) ;
 int necp_handle_policy_list_all (struct necp_session*,int ,int ,int) ;
 int necp_handle_register_service (struct necp_session*,int ,int ,int) ;
 int necp_handle_set_session_priority (struct necp_session*,int ,int ,int) ;
 int necp_handle_unregister_service (struct necp_session*,int ,int ,int) ;
 int necp_send_error_response (struct necp_session*,int,int ,int ) ;
 int proc_getexecutableuuid (int ,int ,int) ;
 int proc_pid (int ) ;
 scalar_t__ uuid_compare (int ,int ) ;

__attribute__((used)) static errno_t
necp_ctl_send(kern_ctl_ref kctlref, u_int32_t unit, void *unitinfo, mbuf_t packet, int flags)
{
#pragma unused(kctlref, unit, flags)
 struct necp_session *session = (struct necp_session *)unitinfo;
 struct necp_packet_header header;
 int error = 0;

 if (session == ((void*)0)) {
  NECPLOG0(LOG_ERR, "Got a NULL session");
  error = EINVAL;
  goto done;
 }

 if (mbuf_pkthdr_len(packet) < sizeof(header)) {
  NECPLOG(LOG_ERR, "Got a bad packet, length (%lu) < sizeof header (%lu)", mbuf_pkthdr_len(packet), sizeof(header));
  error = EINVAL;
  goto done;
 }

 error = mbuf_copydata(packet, 0, sizeof(header), &header);
 if (error) {
  NECPLOG(LOG_ERR, "mbuf_copydata failed for the header: %d", error);
  error = ENOBUFS;
  goto done;
 }

 if (session->proc_locked) {

  uuid_t proc_uuid;
  proc_getexecutableuuid(current_proc(), proc_uuid, sizeof(proc_uuid));
  if (uuid_compare(proc_uuid, session->proc_uuid) != 0) {
   necp_send_error_response(session, header.packet_type, header.message_id, NECP_ERROR_INVALID_PROCESS);
   goto done;
  }
 } else {

  proc_getexecutableuuid(current_proc(), session->proc_uuid, sizeof(session->proc_uuid));
  session->proc_pid = proc_pid(current_proc());
 }

 switch (header.packet_type) {
  case 137: {
   necp_handle_policy_add(session, header.message_id, packet, ((void*)0), 0, sizeof(header), ((void*)0));
   break;
  }
  case 132: {
   necp_handle_policy_get(session, header.message_id, packet, sizeof(header));
   break;
  }
  case 135: {
   necp_handle_policy_delete(session, header.message_id, packet, sizeof(header));
   break;
  }
  case 136: {
   necp_handle_policy_apply_all(session, header.message_id, packet, sizeof(header));
   break;
  }
  case 131: {
   necp_handle_policy_list_all(session, header.message_id, packet, sizeof(header));
   break;
  }
  case 134: {
   necp_handle_policy_delete_all(session, header.message_id, packet, sizeof(header));
   break;
  }
  case 133: {
   necp_handle_policy_dump_all(session, header.message_id, packet, 0, 0, sizeof(header));
   break;
  }
  case 129: {
   necp_handle_set_session_priority(session, header.message_id, packet, sizeof(header));
   break;
  }
  case 138: {
   necp_handle_lock_session_to_proc(session, header.message_id, packet, sizeof(header));
   break;
  }
  case 130: {
   necp_handle_register_service(session, header.message_id, packet, sizeof(header));
   break;
  }
  case 128: {
   necp_handle_unregister_service(session, header.message_id, packet, sizeof(header));
   break;
  }
  default: {
   NECPLOG(LOG_ERR, "Received unknown message type %d", header.packet_type);
   necp_send_error_response(session, header.packet_type, header.message_id, NECP_ERROR_UNKNOWN_PACKET_TYPE);
   break;
  }
 }

done:
 mbuf_freem(packet);
 return (error);
}
