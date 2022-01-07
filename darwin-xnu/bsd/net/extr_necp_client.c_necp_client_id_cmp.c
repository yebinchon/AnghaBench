
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct necp_client {int client_id; } ;


 int uuid_compare (int ,int ) ;

__attribute__((used)) static inline int
necp_client_id_cmp(struct necp_client *client0, struct necp_client *client1)
{
 return (uuid_compare(client0->client_id, client1->client_id));
}
