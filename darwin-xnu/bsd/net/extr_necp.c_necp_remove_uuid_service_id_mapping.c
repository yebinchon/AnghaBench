
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uuid_t ;
struct necp_uuid_id_mapping {scalar_t__ refcount; } ;


 int FALSE ;
 int FREE (struct necp_uuid_id_mapping*,int ) ;
 int LCK_RW_ASSERT (int *,int ) ;
 int LCK_RW_ASSERT_EXCLUSIVE ;
 int LIST_REMOVE (struct necp_uuid_id_mapping*,int ) ;
 int M_NECP ;
 int TRUE ;
 int chain ;
 int necp_kernel_policy_lock ;
 struct necp_uuid_id_mapping* necp_uuid_lookup_app_id_locked (int ) ;
 scalar_t__ uuid_is_null (int ) ;

__attribute__((used)) static bool
necp_remove_uuid_service_id_mapping(uuid_t uuid)
{
 struct necp_uuid_id_mapping *existing_mapping = ((void*)0);

 if (uuid_is_null(uuid)) {
  return (TRUE);
 }

 LCK_RW_ASSERT(&necp_kernel_policy_lock, LCK_RW_ASSERT_EXCLUSIVE);

 existing_mapping = necp_uuid_lookup_app_id_locked(uuid);
 if (existing_mapping != ((void*)0)) {
  if (--existing_mapping->refcount == 0) {
   LIST_REMOVE(existing_mapping, chain);
   FREE(existing_mapping, M_NECP);
  }
  return (TRUE);
 }

 return (FALSE);
}
