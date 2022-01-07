
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_6__ {int ClientIP; } ;
struct TYPE_5__ {int ClientList; } ;
typedef int IP ;
typedef TYPE_1__ IKE_SERVER ;
typedef TYPE_2__ IKE_CLIENT ;


 scalar_t__ CmpIpAddr (int *,int *) ;
 TYPE_2__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;

UINT GetNumberOfIkeClientsFromIP(IKE_SERVER *ike, IP *client_ip)
{
 UINT i, num;

 if (ike == ((void*)0) || client_ip == ((void*)0))
 {
  return 0;
 }

 num = 0;

 for (i = 0;i < LIST_NUM(ike->ClientList);i++)
 {
  IKE_CLIENT *c = LIST_DATA(ike->ClientList, i);

  if (CmpIpAddr(&c->ClientIP, client_ip) == 0)
  {
   num++;
  }
 }

 return num;
}
