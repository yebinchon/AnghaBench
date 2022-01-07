
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uuid_t ;
typedef int u_int32_t ;
struct TYPE_2__ {int netagent_flags; } ;
struct netagent_wrapper {TYPE_1__ netagent; } ;


 int LOG_DEBUG ;
 int NETAGENTLOG0 (int ,char*) ;
 int lck_rw_done (int *) ;
 int lck_rw_lock_shared (int *) ;
 struct netagent_wrapper* netagent_find_agent_with_uuid (int ) ;
 int netagent_lock ;

u_int32_t
netagent_get_flags(uuid_t uuid)
{
 u_int32_t flags = 0;
 lck_rw_lock_shared(&netagent_lock);
 struct netagent_wrapper *wrapper = netagent_find_agent_with_uuid(uuid);
 if (wrapper != ((void*)0)) {
  flags = wrapper->netagent.netagent_flags;
 } else {
  NETAGENTLOG0(LOG_DEBUG, "Flags requested for invalid netagent");
 }
 lck_rw_done(&netagent_lock);

 return (flags);
}
