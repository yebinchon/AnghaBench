
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uuid_t ;
typedef size_t u_int32_t ;
struct ifnet {size_t if_agentcount; int * if_agentids; } ;


 int ENOMEM ;
 int FALSE ;
 scalar_t__ IF_AGENT_INCREMENT ;
 scalar_t__ IF_MAXAGENTS ;
 size_t MIN (scalar_t__,scalar_t__) ;
 int M_NETAGENT ;
 int M_WAITOK ;
 int M_ZERO ;
 int TRUE ;
 int * _REALLOC (int *,int,int ,int) ;
 int netagent_post_updated_interfaces (int ) ;
 scalar_t__ uuid_compare (int ,int ) ;
 int uuid_copy (int ,int ) ;
 scalar_t__ uuid_is_null (int ) ;

__attribute__((used)) static int
if_add_netagent_locked(struct ifnet *ifp, uuid_t new_agent_uuid)
{
 uuid_t *first_empty_slot = ((void*)0);
 u_int32_t index = 0;
 bool already_added = FALSE;

 if (ifp->if_agentids != ((void*)0)) {
  for (index = 0; index < ifp->if_agentcount; index++) {
   uuid_t *netagent_uuid = &(ifp->if_agentids[index]);
   if (uuid_compare(*netagent_uuid, new_agent_uuid) == 0) {

    already_added = TRUE;
    break;
   }
   if (first_empty_slot == ((void*)0) &&
    uuid_is_null(*netagent_uuid)) {
    first_empty_slot = netagent_uuid;
   }
  }
 }
 if (already_added) {

  return (0);
 }
 if (first_empty_slot == ((void*)0)) {
  if (ifp->if_agentcount >= IF_MAXAGENTS) {

   return (ENOMEM);
  } else {

   u_int32_t new_agent_count =
   MIN(ifp->if_agentcount + IF_AGENT_INCREMENT,
       IF_MAXAGENTS);


   uuid_t *new_agent_array = _REALLOC(ifp->if_agentids,
       sizeof(uuid_t) * new_agent_count, M_NETAGENT,
       M_WAITOK | M_ZERO);
   if (new_agent_array == ((void*)0)) {
    return (ENOMEM);
   }


   ifp->if_agentids = new_agent_array;


   first_empty_slot =
       &(ifp->if_agentids[ifp->if_agentcount]);


   ifp->if_agentcount = new_agent_count;
  }
 }
 uuid_copy(*first_empty_slot, new_agent_uuid);
 netagent_post_updated_interfaces(new_agent_uuid);
 return (0);
}
