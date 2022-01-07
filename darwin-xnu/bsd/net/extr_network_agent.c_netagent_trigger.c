
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uuid_t ;
struct proc {int dummy; } ;
struct TYPE_2__ {int netagent_flags; } ;
struct netagent_wrapper {TYPE_1__ netagent; } ;
struct netagent_trigger_args {int agent_uuidlen; scalar_t__ agent_uuid; } ;
typedef int int32_t ;


 int EINVAL ;
 int ENOENT ;
 int ENOTSUP ;
 int ERANGE ;
 int LOG_ERR ;
 int LOG_INFO ;
 int NETAGENTLOG (int ,char*,int,...) ;
 int NETAGENTLOG0 (int ,char*) ;
 int NETAGENT_FLAG_ACTIVE ;
 int NETAGENT_FLAG_USER_ACTIVATED ;
 int NETAGENT_MESSAGE_TYPE_TRIGGER ;
 int NETAGENT_TRIGGER_FLAG_USER ;
 int copyin (scalar_t__,int ,int) ;
 int lck_rw_done (int *) ;
 int lck_rw_lock_shared (int *) ;
 struct netagent_wrapper* netagent_find_agent_with_uuid (int ) ;
 int netagent_lock ;
 int netagent_send_trigger (struct netagent_wrapper*,struct proc*,int ,int ) ;
 scalar_t__ uuid_is_null (int ) ;

int
netagent_trigger(struct proc *p, struct netagent_trigger_args *uap, int32_t *retval)
{
#pragma unused(p, retval)
 uuid_t agent_uuid;
 int error = 0;

 if (uap == ((void*)0)) {
  NETAGENTLOG0(LOG_ERR, "uap == NULL");
  return (EINVAL);
 }

 if (uap->agent_uuid) {
  if (uap->agent_uuidlen != sizeof(uuid_t)) {
   NETAGENTLOG(LOG_ERR, "Incorrect length (got %llu, expected %lu)",
      uap->agent_uuidlen, sizeof(uuid_t));
   return (ERANGE);
  }

  error = copyin(uap->agent_uuid, agent_uuid, sizeof(uuid_t));
  if (error) {
   NETAGENTLOG(LOG_ERR, "copyin error (%d)", error);
   return (error);
  }
 }

 if (uuid_is_null(agent_uuid)) {
  NETAGENTLOG0(LOG_ERR, "Requested netagent UUID is empty");
  return (EINVAL);
 }

 lck_rw_lock_shared(&netagent_lock);
 struct netagent_wrapper *wrapper = netagent_find_agent_with_uuid(agent_uuid);
 if (wrapper == ((void*)0)) {
  NETAGENTLOG0(LOG_ERR, "Requested netagent UUID is not registered");
  error = ENOENT;
  goto done;
 }

 if ((wrapper->netagent.netagent_flags & NETAGENT_FLAG_USER_ACTIVATED) == 0) {

  NETAGENTLOG0(LOG_ERR, "Requested netagent UUID is not eligible for triggering");
  error = ENOTSUP;
  goto done;
 }

 if ((wrapper->netagent.netagent_flags & NETAGENT_FLAG_ACTIVE)) {

  NETAGENTLOG0(LOG_INFO, "Requested netagent UUID is already active");
  error = 0;
  goto done;
 }

 error = netagent_send_trigger(wrapper, p, NETAGENT_TRIGGER_FLAG_USER, NETAGENT_MESSAGE_TYPE_TRIGGER);
 NETAGENTLOG((error ? LOG_ERR : LOG_INFO), "Triggered netagent (error %d)", error);
done:
 lck_rw_done(&netagent_lock);
 return (error);
}
