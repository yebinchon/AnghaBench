
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uuid_t ;
struct necp_client {int dummy; } ;


 int ENOENT ;
 int LOG_ERR ;
 int NECPLOG0 (int ,char*) ;
 int NECP_CLIENT_TREE_LOCK_SHARED () ;
 int NECP_CLIENT_TREE_UNLOCK () ;
 int NECP_CLIENT_UNLOCK (struct necp_client*) ;
 int necp_client_assert_bb_radio_manager_common (struct necp_client*,int) ;
 struct necp_client* necp_find_client_and_lock (int ) ;

int
necp_client_assert_bb_radio_manager(uuid_t client_id, bool assert)
{
 struct necp_client *client;
 int error = 0;

 NECP_CLIENT_TREE_LOCK_SHARED();

 client = necp_find_client_and_lock(client_id);

 if (client) {

  error = necp_client_assert_bb_radio_manager_common(client, assert);

  NECP_CLIENT_UNLOCK(client);
 } else {
  NECPLOG0(LOG_ERR, "Couldn't find client");
  error = ENOENT;
 }

 NECP_CLIENT_TREE_UNLOCK();

 return (error);
}
