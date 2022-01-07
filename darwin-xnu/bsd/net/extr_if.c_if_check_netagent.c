
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uuid_t ;
typedef size_t uint32_t ;
struct ifnet {size_t if_agentcount; int * if_agentids; } ;
typedef int boolean_t ;


 int FALSE ;
 int TRUE ;
 int ifnet_lock_done (struct ifnet*) ;
 int ifnet_lock_shared (struct ifnet*) ;
 scalar_t__ uuid_compare (int ,int ) ;
 scalar_t__ uuid_is_null (int ) ;

boolean_t
if_check_netagent(struct ifnet *ifp, uuid_t find_agent_uuid)
{
 boolean_t found = FALSE;

 if (!ifp || uuid_is_null(find_agent_uuid))
  return FALSE;

 ifnet_lock_shared(ifp);

 if (ifp->if_agentids != ((void*)0)) {
  for (uint32_t index = 0; index < ifp->if_agentcount; index++) {
   if (uuid_compare(ifp->if_agentids[index], find_agent_uuid) == 0) {
    found = TRUE;
    break;
   }
  }
 }

 ifnet_lock_done(ifp);

 return found;
}
