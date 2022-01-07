
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32_t ;


 int FALSE ;
 int LCK_RW_ASSERT (int *,int ) ;
 int LCK_RW_ASSERT_EXCLUSIVE ;
 int LOG_ERR ;
 int NECPLOG0 (int ,char*) ;
 scalar_t__ NECP_FIRST_VALID_APP_ID ;
 scalar_t__ NECP_FIRST_VALID_SERVICE_ID ;
 scalar_t__ NECP_NULL_SERVICE_ID ;
 int TRUE ;
 int necp_kernel_policy_lock ;
 int * necp_uuid_lookup_uuid_with_app_id_locked (scalar_t__) ;
 int * necp_uuid_lookup_uuid_with_service_id_locked (scalar_t__) ;

__attribute__((used)) static u_int32_t
necp_get_new_uuid_id(bool service)
{
 static u_int32_t necp_last_service_uuid_id = 0;
 static u_int32_t necp_last_app_uuid_id = 0;

 u_int32_t newid = 0;

 LCK_RW_ASSERT(&necp_kernel_policy_lock, LCK_RW_ASSERT_EXCLUSIVE);

 if (service) {
  bool wrapped = FALSE;
  do {
   necp_last_service_uuid_id++;
   if (necp_last_service_uuid_id < NECP_FIRST_VALID_SERVICE_ID ||
    necp_last_service_uuid_id >= NECP_FIRST_VALID_APP_ID) {
    if (wrapped) {

     NECPLOG0(LOG_ERR, "Failed to find a free service UUID.\n");
     return (NECP_NULL_SERVICE_ID);
    }
    necp_last_service_uuid_id = NECP_FIRST_VALID_SERVICE_ID;
    wrapped = TRUE;
   }
   newid = necp_last_service_uuid_id;
  } while (necp_uuid_lookup_uuid_with_service_id_locked(newid) != ((void*)0));
 } else {
  bool wrapped = FALSE;
  do {
   necp_last_app_uuid_id++;
   if (necp_last_app_uuid_id < NECP_FIRST_VALID_APP_ID) {
    if (wrapped) {

     NECPLOG0(LOG_ERR, "Failed to find a free app UUID.\n");
     return (NECP_NULL_SERVICE_ID);
    }
    necp_last_app_uuid_id = NECP_FIRST_VALID_APP_ID;
    wrapped = TRUE;
   }
   newid = necp_last_app_uuid_id;
  } while (necp_uuid_lookup_uuid_with_app_id_locked(newid) != ((void*)0));
 }

 if (newid == NECP_NULL_SERVICE_ID) {
  NECPLOG0(LOG_ERR, "Allocate uuid ID failed.\n");
  return (NECP_NULL_SERVICE_ID);
 }

 return (newid);
}
