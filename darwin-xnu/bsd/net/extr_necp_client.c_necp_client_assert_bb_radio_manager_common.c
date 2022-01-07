
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uuid_t ;
typedef int uint8_t ;
struct necp_client {int agent_handle; int proc_pid; int client_id; } ;


 int EINVAL ;
 int FALSE ;
 int LOG_ERR ;
 int NECPLOG0 (int ,char*) ;
 int NETAGENT_MESSAGE_TYPE_CLIENT_ASSERT ;
 int NETAGENT_MESSAGE_TYPE_CLIENT_UNASSERT ;
 int TRUE ;
 int necp_client_add_assertion (struct necp_client*,int ) ;
 int necp_client_lookup_bb_radio_manager (struct necp_client*,int ) ;
 int necp_client_remove_assertion (struct necp_client*,int ) ;
 int netagent_client_message (int ,int ,int ,int ,int ) ;

__attribute__((used)) static int
necp_client_assert_bb_radio_manager_common(struct necp_client *client, bool assert)
{
 uuid_t netagent_uuid;
 uint8_t assert_type;
 int error;

 error = necp_client_lookup_bb_radio_manager(client, netagent_uuid);
 if (error) {
  NECPLOG0(LOG_ERR, "BB radio manager agent not found");
  return error;
 }


 if (assert == FALSE) {
  assert_type = NETAGENT_MESSAGE_TYPE_CLIENT_UNASSERT;

  if (!necp_client_remove_assertion(client, netagent_uuid)) {
   return EINVAL;
  }
 } else {
  assert_type = NETAGENT_MESSAGE_TYPE_CLIENT_ASSERT;
 }

 error = netagent_client_message(netagent_uuid, client->client_id, client->proc_pid, client->agent_handle, assert_type);
 if (error) {
  NECPLOG0(LOG_ERR, "netagent_client_message failed");
  return error;
 }


 if (assert == TRUE) {
  necp_client_add_assertion(client, netagent_uuid);
 }

 return 0;
}
