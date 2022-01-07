
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uuid_t ;
typedef int u_int32_t ;
struct netagent_wrapper {int generation; } ;


 int LOG_DEBUG ;
 int NETAGENTLOG0 (int ,char*) ;
 int lck_rw_done (int *) ;
 int lck_rw_lock_shared (int *) ;
 struct netagent_wrapper* netagent_find_agent_with_uuid (int ) ;
 int netagent_lock ;

u_int32_t
netagent_get_generation(uuid_t uuid)
{
 u_int32_t generation = 0;
 lck_rw_lock_shared(&netagent_lock);
 struct netagent_wrapper *wrapper = netagent_find_agent_with_uuid(uuid);
 if (wrapper != ((void*)0)) {
  generation = wrapper->generation;
 } else {
  NETAGENTLOG0(LOG_DEBUG, "Generation requested for invalid netagent");
 }
 lck_rw_done(&netagent_lock);

 return (generation);
}
