
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int IP_CLIENT ;


 int Free (int *) ;
 int * LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int ReleaseList (int *) ;
 int * ip_clients ;

void FreeIpClientList()
{
 UINT i;

 for (i = 0;i < LIST_NUM(ip_clients);i++)
 {
  IP_CLIENT *c = LIST_DATA(ip_clients, i);

  Free(c);
 }

 ReleaseList(ip_clients);
 ip_clients = ((void*)0);
}
