
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
netagent_handle_use_count_getopt(struct netagent_session *session, u_int8_t *buffer, size_t *buffer_length)
{
 errno_t response_error = 0;
 uint64_t use_count = 0;

 if (session == ((void*)0)) {
  NETAGENTLOG0(LOG_ERR, "Failed to find session");
  response_error = ENOENT;
  goto done;
 }

 if (buffer == ((void*)0)) {
  NETAGENTLOG0(LOG_ERR, "No payload received");
  response_error = EINVAL;
  goto done;
 }

 if (*buffer_length != sizeof(use_count)) {
  NETAGENTLOG(LOG_ERR, "Buffer length is invalid (%lu)", *buffer_length);
  response_error = EINVAL;
  goto done;
 }

 lck_rw_lock_shared(&netagent_lock);

 if (session->wrapper == ((void*)0)) {
  NETAGENTLOG0(LOG_ERR, "Session has no agent registered");
  response_error = ENOENT;
  lck_rw_done(&netagent_lock);
  goto done;
 }

 use_count = session->wrapper->use_count;
 lck_rw_done(&netagent_lock);

 memcpy(buffer, &use_count, sizeof(use_count));
 *buffer_length = sizeof(use_count);

done:
 return response_error;
}
