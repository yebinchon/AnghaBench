
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ NumConnections; } ;
typedef TYPE_1__ IP_CLIENT ;
typedef int IP ;


 int Delete (int ,TYPE_1__*) ;
 int Free (TYPE_1__*) ;
 int LockList (int ) ;
 TYPE_1__* SearchIpClient (int *) ;
 int UnlockList (int ) ;
 int ip_clients ;

void DelIpClient(IP *ip)
{
 IP_CLIENT *c;

 if (ip == ((void*)0))
 {
  return;
 }

 LockList(ip_clients);
 {
  c = SearchIpClient(ip);

  if (c != ((void*)0))
  {
   c->NumConnections--;

   if (c->NumConnections == 0)
   {
    Delete(ip_clients, c);
    Free(c);
   }
  }
 }
 UnlockList(ip_clients);


}
