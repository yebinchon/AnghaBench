
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uuid_t ;
typedef int uint32_t ;
struct netagent_session {TYPE_2__* wrapper; } ;
typedef scalar_t__ netagent_session_t ;
typedef int errno_t ;
struct TYPE_3__ {int netagent_uuid; } ;
struct TYPE_4__ {TYPE_1__ netagent; } ;


 int EINVAL ;
 int ENOENT ;
 int LOG_ERR ;
 int NETAGENTLOG0 (int ,char*) ;
 int necp_update_flow_protoctl_event (int ,int ,int ,int ,int ) ;

errno_t
netagent_update_flow_protoctl_event(netagent_session_t _session,
    uuid_t client_id, uint32_t protoctl_event_code,
    uint32_t protoctl_event_val, uint32_t protoctl_event_tcp_seq_number)
{
 struct netagent_session *session = (struct netagent_session *)_session;
 int error = 0;

 if (session == ((void*)0)) {
  NETAGENTLOG0(LOG_ERR, "Cannot assign nexus from NULL session");
  return (EINVAL);
 }

 if (session->wrapper == ((void*)0)) {
  NETAGENTLOG0(LOG_ERR, "Session has no agent");
  return (ENOENT);
 }

 error = necp_update_flow_protoctl_event(session->wrapper->netagent.netagent_uuid,
     client_id, protoctl_event_code, protoctl_event_val, protoctl_event_tcp_seq_number);

 return (error);
}
