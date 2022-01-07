
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uuid_t ;
struct TYPE_2__ {int netagent_type; int netagent_domain; } ;
struct netagent_wrapper {TYPE_1__ netagent; } ;


 int FALSE ;
 int LOG_ERR ;
 int NETAGENTLOG (int ,char*,char*,char*) ;
 int NETAGENTLOG0 (int ,char*) ;
 int NETAGENT_DOMAINSIZE ;
 int NETAGENT_TYPESIZE ;
 int TRUE ;
 int lck_rw_done (int *) ;
 int lck_rw_lock_shared (int *) ;
 int memcpy (char*,int ,int ) ;
 struct netagent_wrapper* netagent_find_agent_with_uuid (int ) ;
 int netagent_lock ;

bool
netagent_get_agent_domain_and_type(uuid_t uuid, char *domain, char *type)
{
 bool found = FALSE;
 if (domain == ((void*)0) || type == ((void*)0)) {
  NETAGENTLOG(LOG_ERR, "Invalid arguments for netagent_get_agent_domain_and_type %p %p", domain, type);
  return (FALSE);
 }

 lck_rw_lock_shared(&netagent_lock);
 struct netagent_wrapper *wrapper = netagent_find_agent_with_uuid(uuid);
 if (wrapper != ((void*)0)) {
  found = TRUE;
  memcpy(domain, wrapper->netagent.netagent_domain, NETAGENT_DOMAINSIZE);
  memcpy(type, wrapper->netagent.netagent_type, NETAGENT_TYPESIZE);
 } else {
  NETAGENTLOG0(LOG_ERR, "Type requested for invalid netagent");
 }
 lck_rw_done(&netagent_lock);

 return (found);
}
