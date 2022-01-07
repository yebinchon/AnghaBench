
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct netagent_session {int dummy; } ;
struct netagent_message_header {int message_type; int message_id; int message_payload_length; } ;
typedef int mbuf_t ;
typedef int kern_ctl_ref ;
typedef int header ;
typedef int errno_t ;


 int EINVAL ;
 int ENOBUFS ;
 int LOG_ERR ;
 int NETAGENTLOG (int ,char*,int,...) ;
 int NETAGENTLOG0 (int ,char*) ;
 int NETAGENT_MESSAGE_ERROR_UNKNOWN_TYPE ;







 int mbuf_copydata (int ,int ,int,struct netagent_message_header*) ;
 int mbuf_freem (int ) ;
 int mbuf_pkthdr_len (int ) ;
 int netagent_handle_assign_nexus_message (struct netagent_session*,int ,int ,int ,int) ;
 int netagent_handle_get (struct netagent_session*,int ,int ,int ,int) ;
 int netagent_handle_register_message (struct netagent_session*,int ,int ,int ,int) ;
 int netagent_handle_unregister_message (struct netagent_session*,int ,int ,int ,int) ;
 int netagent_handle_update_message (struct netagent_session*,int ,int ,int ,int) ;
 int netagent_send_error_response (struct netagent_session*,int,int ,int ) ;

__attribute__((used)) static errno_t
netagent_ctl_send(kern_ctl_ref kctlref, u_int32_t unit, void *unitinfo, mbuf_t packet, int flags)
{
#pragma unused(kctlref, unit, flags)
 struct netagent_session *session = (struct netagent_session *)unitinfo;
 struct netagent_message_header header;
 int error = 0;

 if (session == ((void*)0)) {
  NETAGENTLOG0(LOG_ERR, "Got a NULL session");
  error = EINVAL;
  goto done;
 }

 if (mbuf_pkthdr_len(packet) < sizeof(header)) {
  NETAGENTLOG(LOG_ERR, "Got a bad packet, length (%lu) < sizeof header (%lu)",
     mbuf_pkthdr_len(packet), sizeof(header));
  error = EINVAL;
  goto done;
 }

 error = mbuf_copydata(packet, 0, sizeof(header), &header);
 if (error) {
  NETAGENTLOG(LOG_ERR, "mbuf_copydata failed for the header: %d", error);
  error = ENOBUFS;
  goto done;
 }

 switch (header.message_type) {
  case 131: {
   netagent_handle_register_message(session, header.message_id, header.message_payload_length,
                  packet, sizeof(header));
   break;
  }
  case 129: {
   netagent_handle_unregister_message(session, header.message_id, header.message_payload_length,
              packet, sizeof(header));
   break;
  }
  case 128: {
   netagent_handle_update_message(session, header.message_id, header.message_payload_length,
           packet, sizeof(header));
   break;
  }
  case 132: {
   netagent_handle_get(session, header.message_id, header.message_payload_length,
        packet, sizeof(header));
   break;
  }
  case 134: {
   NETAGENTLOG0(LOG_ERR, "NETAGENT_MESSAGE_TYPE_ASSERT no longer supported");
   break;
  }
  case 130: {
   NETAGENTLOG0(LOG_ERR, "NETAGENT_MESSAGE_TYPE_UNASSERT no longer supported");
   break;
  }
  case 133: {
   netagent_handle_assign_nexus_message(session, header.message_id, header.message_payload_length,
             packet, sizeof(header));
   break;
  }
  default: {
   NETAGENTLOG(LOG_ERR, "Received unknown message type %d", header.message_type);
   netagent_send_error_response(session, header.message_type, header.message_id,
           NETAGENT_MESSAGE_ERROR_UNKNOWN_TYPE);
   break;
  }
 }

done:
 mbuf_freem(packet);
 return (error);
}
