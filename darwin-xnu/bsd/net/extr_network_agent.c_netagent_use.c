
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uuid_t ;
typedef int uint64_t ;
struct netagent_wrapper {int use_count; } ;


 int ENOENT ;
 int LOG_ERR ;
 int NETAGENTLOG0 (int ,char*) ;
 int lck_rw_done (int *) ;
 int lck_rw_lock_exclusive (int *) ;
 struct netagent_wrapper* netagent_find_agent_with_uuid (int ) ;
 int netagent_lock ;

int
netagent_use(uuid_t agent_uuid, uint64_t *out_use_count)
{
 int error = 0;

 lck_rw_lock_exclusive(&netagent_lock);
 struct netagent_wrapper *wrapper = netagent_find_agent_with_uuid(agent_uuid);
 if (wrapper == ((void*)0)) {
  NETAGENTLOG0(LOG_ERR, "netagent_assert: Requested netagent UUID is not registered");
  error = ENOENT;
  goto done;
 }

 uint64_t current_count = wrapper->use_count;
 wrapper->use_count++;

 if (out_use_count != ((void*)0)) {
  *out_use_count = current_count;
 }

done:
 lck_rw_done(&netagent_lock);
 return (error);
}
