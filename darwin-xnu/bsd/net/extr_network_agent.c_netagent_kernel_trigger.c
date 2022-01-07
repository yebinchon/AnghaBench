
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uuid_t ;
struct TYPE_2__ {int netagent_flags; } ;
struct netagent_wrapper {TYPE_1__ netagent; } ;


 int EINVAL ;
 int ENOENT ;
 int LOG_ERR ;
 int LOG_INFO ;
 int NETAGENTLOG (int ,char*,int) ;
 int NETAGENTLOG0 (int ,char*) ;
 int NETAGENT_FLAG_ACTIVE ;
 int NETAGENT_FLAG_KERNEL_ACTIVATED ;
 int NETAGENT_MESSAGE_TYPE_TRIGGER ;
 int NETAGENT_TRIGGER_FLAG_KERNEL ;
 int current_proc () ;
 int lck_rw_done (int *) ;
 int lck_rw_lock_shared (int *) ;
 struct netagent_wrapper* netagent_find_agent_with_uuid (int ) ;
 int netagent_lock ;
 int netagent_send_trigger (struct netagent_wrapper*,int ,int ,int ) ;

int
netagent_kernel_trigger(uuid_t uuid)
{
 int error = 0;

 lck_rw_lock_shared(&netagent_lock);
 struct netagent_wrapper *wrapper = netagent_find_agent_with_uuid(uuid);
 if (wrapper == ((void*)0)) {
  NETAGENTLOG0(LOG_ERR, "Requested netagent for kernel trigger could not be found");
  error = ENOENT;
  goto done;
 }

 if ((wrapper->netagent.netagent_flags & NETAGENT_FLAG_KERNEL_ACTIVATED) == 0) {
  NETAGENTLOG0(LOG_ERR, "Requested netagent for kernel trigger is not kernel activated");

  error = EINVAL;
  goto done;
 }

 if ((wrapper->netagent.netagent_flags & NETAGENT_FLAG_ACTIVE)) {

  NETAGENTLOG0(LOG_INFO, "Requested netagent for kernel trigger is already active");
  error = 0;
  goto done;
 }

 error = netagent_send_trigger(wrapper, current_proc(), NETAGENT_TRIGGER_FLAG_KERNEL, NETAGENT_MESSAGE_TYPE_TRIGGER);
 NETAGENTLOG((error ? LOG_ERR : LOG_INFO), "Triggered netagent from kernel (error %d)", error);
done:
 lck_rw_done(&netagent_lock);
 return (error);
}
