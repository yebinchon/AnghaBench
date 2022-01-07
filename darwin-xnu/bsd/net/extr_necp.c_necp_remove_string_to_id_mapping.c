
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct necp_string_id_mapping_list {int dummy; } ;
struct necp_string_id_mapping {scalar_t__ refcount; struct necp_string_id_mapping* string; } ;


 int FALSE ;
 int FREE (struct necp_string_id_mapping*,int ) ;
 int LCK_RW_ASSERT (int *,int ) ;
 int LCK_RW_ASSERT_EXCLUSIVE ;
 int LIST_REMOVE (struct necp_string_id_mapping*,int ) ;
 int M_NECP ;
 int TRUE ;
 int chain ;
 int necp_kernel_policy_lock ;
 struct necp_string_id_mapping* necp_lookup_string_to_id_locked (struct necp_string_id_mapping_list*,char*) ;

__attribute__((used)) static bool
necp_remove_string_to_id_mapping(struct necp_string_id_mapping_list *list, char *string)
{
 struct necp_string_id_mapping *existing_mapping = ((void*)0);

 LCK_RW_ASSERT(&necp_kernel_policy_lock, LCK_RW_ASSERT_EXCLUSIVE);

 existing_mapping = necp_lookup_string_to_id_locked(list, string);
 if (existing_mapping != ((void*)0)) {
  if (--existing_mapping->refcount == 0) {
   LIST_REMOVE(existing_mapping, chain);
   FREE(existing_mapping->string, M_NECP);
   FREE(existing_mapping, M_NECP);
  }
  return (TRUE);
 }

 return (FALSE);
}
