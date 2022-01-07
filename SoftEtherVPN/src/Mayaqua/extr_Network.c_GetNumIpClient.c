
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {int NumConnections; } ;
typedef TYPE_1__ IP_CLIENT ;
typedef int IP ;


 int LockList (int ) ;
 TYPE_1__* SearchIpClient (int *) ;
 int UnlockList (int ) ;
 int ip_clients ;

UINT GetNumIpClient(IP *ip)
{
 IP_CLIENT *c;
 UINT ret = 0;

 if (ip == ((void*)0))
 {
  return 0;
 }

 LockList(ip_clients);
 {
  c = SearchIpClient(ip);

  if (c != ((void*)0))
  {
   ret = c->NumConnections;
  }
 }
 UnlockList(ip_clients);

 return ret;
}
