
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct necp_client {int dummy; } ;


 int NECP_CLIENT_LOCK (struct necp_client*) ;
 int NECP_CLIENT_UNLOCK (struct necp_client*) ;
 int necp_client_retain_locked (struct necp_client*) ;

__attribute__((used)) static void
necp_client_retain(struct necp_client *client)
{
 NECP_CLIENT_LOCK(client);
 necp_client_retain_locked(client);
 NECP_CLIENT_UNLOCK(client);
}
