
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct necp_client {int reference_count; } ;


 int ASSERT (int) ;
 int NECP_CLIENT_ASSERT_LOCKED (struct necp_client*) ;
 int necp_client_free (struct necp_client*) ;

__attribute__((used)) static bool
necp_client_release_locked(struct necp_client *client)
{
 NECP_CLIENT_ASSERT_LOCKED(client);

 uint32_t old_ref = client->reference_count;

 ASSERT(client->reference_count != 0);
 if (--client->reference_count == 0) {
  necp_client_free(client);
 }

 return (old_ref == 1);
}
