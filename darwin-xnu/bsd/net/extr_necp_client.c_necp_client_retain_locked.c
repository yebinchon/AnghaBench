
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct necp_client {scalar_t__ reference_count; } ;


 int ASSERT (int) ;
 int NECP_CLIENT_ASSERT_LOCKED (struct necp_client*) ;

__attribute__((used)) static void
necp_client_retain_locked(struct necp_client *client)
{
 NECP_CLIENT_ASSERT_LOCKED(client);

 client->reference_count++;
 ASSERT(client->reference_count != 0);
}
