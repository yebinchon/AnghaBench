
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;


 int FALSE ;
 int LCK_RW_ASSERT (int *,int ) ;
 int LCK_RW_ASSERT_EXCLUSIVE ;
 int LOG_ERR ;
 int NECPLOG0 (int ,char*) ;
 int TRUE ;
 int necp_account_id_list ;
 int necp_kernel_policy_lock ;
 int * necp_lookup_string_with_id_locked (int *,int) ;

__attribute__((used)) static u_int32_t
necp_get_new_string_id(void)
{
 static u_int32_t necp_last_string_id = 0;

 u_int32_t newid = 0;

 LCK_RW_ASSERT(&necp_kernel_policy_lock, LCK_RW_ASSERT_EXCLUSIVE);

 bool wrapped = FALSE;
 do {
  necp_last_string_id++;
  if (necp_last_string_id < 1) {
   if (wrapped) {

    NECPLOG0(LOG_ERR, "Failed to find a free app UUID.\n");
    return (0);
   }
   necp_last_string_id = 1;
   wrapped = TRUE;
  }
  newid = necp_last_string_id;
 } while (necp_lookup_string_with_id_locked(&necp_account_id_list, newid) != ((void*)0));

 if (newid == 0) {
  NECPLOG0(LOG_ERR, "Allocate string id failed.\n");
  return (0);
 }

 return (newid);
}
