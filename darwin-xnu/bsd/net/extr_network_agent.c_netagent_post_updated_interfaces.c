
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uuid_t ;
struct netagent_wrapper {int dummy; } ;


 int KEV_NETAGENT_UPDATED_INTERFACES ;
 int LOG_DEBUG ;
 int NETAGENTLOG0 (int ,char*) ;
 int TRUE ;
 int lck_rw_done (int *) ;
 int lck_rw_lock_shared (int *) ;
 struct netagent_wrapper* netagent_find_agent_with_uuid (int ) ;
 int netagent_lock ;
 int netagent_post_event (int ,int ,int ) ;

void
netagent_post_updated_interfaces(uuid_t uuid)
{
 struct netagent_wrapper *wrapper = ((void*)0);
 lck_rw_lock_shared(&netagent_lock);
 wrapper = netagent_find_agent_with_uuid(uuid);
 lck_rw_done(&netagent_lock);

 if (wrapper != ((void*)0)) {
  netagent_post_event(uuid, KEV_NETAGENT_UPDATED_INTERFACES, TRUE);
 } else {
  NETAGENTLOG0(LOG_DEBUG, "Interface event with no associated agent");
 }

 return;
}
