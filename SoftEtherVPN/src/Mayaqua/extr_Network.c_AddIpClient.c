
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ NumConnections; int IpAddress; } ;
typedef TYPE_1__ IP_CLIENT ;
typedef int IP ;


 int Add (int ,TYPE_1__*) ;
 int Copy (int *,int *,int) ;
 int LockList (int ) ;
 TYPE_1__* SearchIpClient (int *) ;
 int UnlockList (int ) ;
 TYPE_1__* ZeroMallocFast (int) ;
 int ip_clients ;

void AddIpClient(IP *ip)
{
 IP_CLIENT *c;

 if (ip == ((void*)0))
 {
  return;
 }

 LockList(ip_clients);
 {
  c = SearchIpClient(ip);

  if (c == ((void*)0))
  {
   c = ZeroMallocFast(sizeof(IP_CLIENT));
   Copy(&c->IpAddress, ip, sizeof(IP));
   c->NumConnections = 0;

   Add(ip_clients, c);
  }

  c->NumConnections++;
 }
 UnlockList(ip_clients);


}
