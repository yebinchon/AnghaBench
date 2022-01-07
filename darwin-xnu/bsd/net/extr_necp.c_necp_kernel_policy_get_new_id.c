
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ necp_kernel_policy_id ;


 int FALSE ;
 int LCK_RW_ASSERT (int *,int ) ;
 int LCK_RW_ASSERT_EXCLUSIVE ;
 int LOG_ERR ;
 int NECPLOG0 (int ,char*) ;
 scalar_t__ NECP_KERNEL_POLICY_ID_FIRST_VALID_IP ;
 scalar_t__ NECP_KERNEL_POLICY_ID_FIRST_VALID_SOCKET ;
 scalar_t__ NECP_KERNEL_POLICY_ID_NONE ;
 int TRUE ;
 int * necp_kernel_ip_output_policy_find (scalar_t__) ;
 int necp_kernel_policy_lock ;
 int * necp_kernel_socket_policy_find (scalar_t__) ;

__attribute__((used)) static necp_kernel_policy_id
necp_kernel_policy_get_new_id(bool socket_level)
{
 static necp_kernel_policy_id necp_last_kernel_socket_policy_id = 0;
 static necp_kernel_policy_id necp_last_kernel_ip_policy_id = 0;

 necp_kernel_policy_id newid = NECP_KERNEL_POLICY_ID_NONE;

 LCK_RW_ASSERT(&necp_kernel_policy_lock, LCK_RW_ASSERT_EXCLUSIVE);

 if (socket_level) {
  bool wrapped = FALSE;
  do {
   necp_last_kernel_socket_policy_id++;
   if (necp_last_kernel_socket_policy_id < NECP_KERNEL_POLICY_ID_FIRST_VALID_SOCKET ||
    necp_last_kernel_socket_policy_id >= NECP_KERNEL_POLICY_ID_FIRST_VALID_IP) {
    if (wrapped) {

     NECPLOG0(LOG_ERR, "Failed to find a free socket kernel policy ID.\n");
     return (NECP_KERNEL_POLICY_ID_NONE);
    }
    necp_last_kernel_socket_policy_id = NECP_KERNEL_POLICY_ID_FIRST_VALID_SOCKET;
    wrapped = TRUE;
   }
   newid = necp_last_kernel_socket_policy_id;
  } while (necp_kernel_socket_policy_find(newid) != ((void*)0));
 } else {
  bool wrapped = FALSE;
  do {
   necp_last_kernel_ip_policy_id++;
   if (necp_last_kernel_ip_policy_id < NECP_KERNEL_POLICY_ID_FIRST_VALID_IP) {
    if (wrapped) {

     NECPLOG0(LOG_ERR, "Failed to find a free IP kernel policy ID.\n");
     return (NECP_KERNEL_POLICY_ID_NONE);
    }
    necp_last_kernel_ip_policy_id = NECP_KERNEL_POLICY_ID_FIRST_VALID_IP;
    wrapped = TRUE;
   }
   newid = necp_last_kernel_ip_policy_id;
  } while (necp_kernel_ip_output_policy_find(newid) != ((void*)0));
 }

 if (newid == NECP_KERNEL_POLICY_ID_NONE) {
  NECPLOG0(LOG_ERR, "Allocate kernel policy id failed.\n");
  return (NECP_KERNEL_POLICY_ID_NONE);
 }

 return (newid);
}
