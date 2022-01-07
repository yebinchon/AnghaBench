
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int use_count ;
typedef int uint64_t ;
typedef int u_int8_t ;
struct netagent_session {TYPE_1__* wrapper; } ;
typedef int errno_t ;
struct TYPE_2__ {int use_count; } ;


 int EINVAL ;
 int ENOENT ;
 int LOG_ERR ;
 int NETAGENTLOG (int ,char*,size_t) ;
 int NETAGENTLOG0 (int ,char*) ;
 int lck_rw_done (int *) ;
 int lck_rw_lock_shared (int *) ;
 int memcpy (int *,int *,int) ;
 int netagent_lock ;

errno_t
netagent_handle_use_count_setopt(struct netagent_session *session, u_int8_t *payload, size_t payload_length)
{
 errno_t response_error = 0;
 uint64_t use_count = 0;

 if (session == ((void*)0)) {
  NETAGENTLOG0(LOG_ERR, "Failed to find session");
  response_error = ENOENT;
  goto done;
 }

 if (payload == ((void*)0)) {
  NETAGENTLOG0(LOG_ERR, "No payload received");
  response_error = EINVAL;
  goto done;
 }

 if (payload_length != sizeof(use_count)) {
  NETAGENTLOG(LOG_ERR, "Payload length is invalid (%lu)", payload_length);
  response_error = EINVAL;
  goto done;
 }

 memcpy(&use_count, payload, sizeof(use_count));

 lck_rw_lock_shared(&netagent_lock);

 if (session->wrapper == ((void*)0)) {
  NETAGENTLOG0(LOG_ERR, "Session has no agent registered");
  response_error = ENOENT;
  lck_rw_done(&netagent_lock);
  goto done;
 }

 session->wrapper->use_count = use_count;

 lck_rw_done(&netagent_lock);

done:
 return response_error;
}
