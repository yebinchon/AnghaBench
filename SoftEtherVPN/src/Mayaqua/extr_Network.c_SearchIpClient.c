
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int t ;
struct TYPE_6__ {int IpAddress; } ;
typedef TYPE_1__ IP_CLIENT ;
typedef int IP ;


 int Copy (int *,int *,int) ;
 TYPE_1__* Search (int ,TYPE_1__*) ;
 int Zero (TYPE_1__*,int) ;
 int ip_clients ;

IP_CLIENT *SearchIpClient(IP *ip)
{
 IP_CLIENT t;

 if (ip == ((void*)0))
 {
  return ((void*)0);
 }

 Zero(&t, sizeof(t));
 Copy(&t.IpAddress, ip, sizeof(IP));

 return Search(ip_clients, &t);
}
