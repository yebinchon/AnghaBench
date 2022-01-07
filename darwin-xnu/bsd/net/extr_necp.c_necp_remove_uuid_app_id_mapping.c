
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uuid_t ;
struct necp_uuid_id_mapping {scalar_t__ refcount; int table_refcount; } ;


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

__attribute__((used)) static bool
necp_remove_uuid_app_id_mapping(uuid_t uuid, bool *removed_mapping, bool uuid_policy_table)
{
 struct necp_uuid_id_mapping *existing_mapping = ((void*)0);

 LCK_RW_ASSERT(&necp_kernel_policy_lock, LCK_RW_ASSERT_EXCLUSIVE);

 if (removed_mapping) {
  *removed_mapping = FALSE;
 }

 existing_mapping = necp_uuid_lookup_app_id_locked(uuid);
 if (existing_mapping != ((void*)0)) {
  if (uuid_policy_table) {
   existing_mapping->table_refcount--;
  }
  if (--existing_mapping->refcount == 0) {
   LIST_REMOVE(existing_mapping, chain);
   FREE(existing_mapping, M_NECP);
   if (removed_mapping) {
    *removed_mapping = TRUE;
   }
  }
  return (TRUE);
 }

 return (FALSE);
}
