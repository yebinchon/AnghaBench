
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uuid_t ;
struct netagent_session {TYPE_2__* wrapper; } ;
typedef scalar_t__ netagent_session_t ;
typedef int errno_t ;
struct TYPE_3__ {int netagent_uuid; } ;
struct TYPE_4__ {TYPE_1__ netagent; } ;


 int EINVAL ;
 int ENOENT ;
 int LOG_DEBUG ;
 int LOG_ERR ;
 int NETAGENTLOG (int ,char*,int) ;
 int NETAGENTLOG0 (int ,char*) ;
 int necp_assign_client_result (int ,int ,void*,size_t) ;

errno_t
netagent_assign_nexus(netagent_session_t _session, uuid_t necp_client_uuid,
       void *assign_message, size_t assigned_results_length)
{
 struct netagent_session *session = (struct netagent_session *)_session;
 if (session == ((void*)0)) {
  NETAGENTLOG0(LOG_ERR, "Cannot assign nexus from NULL session");
  return EINVAL;
 }

 if (session->wrapper == ((void*)0)) {
  NETAGENTLOG0(LOG_ERR, "Session has no agent");
  return ENOENT;
 }


 int error = necp_assign_client_result(session->wrapper->netagent.netagent_uuid, necp_client_uuid, assign_message, assigned_results_length);
 if (error) {

  NETAGENTLOG((error == ENOENT ? LOG_DEBUG : LOG_ERR), "Client assignment failed: %d", error);
  return error;
 }

 NETAGENTLOG0(LOG_DEBUG, "Agent assigned nexus properties to client");
 return 0;
}
