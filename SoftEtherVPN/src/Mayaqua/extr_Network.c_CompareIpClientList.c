
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int IpAddress; } ;
typedef TYPE_1__ IP_CLIENT ;


 int CmpIpAddr (int *,int *) ;

int CompareIpClientList(void *p1, void *p2)
{
 IP_CLIENT *c1, *c2;
 if (p1 == ((void*)0) || p2 == ((void*)0))
 {
  return 0;
 }
 c1 = *(IP_CLIENT **)p1;
 c2 = *(IP_CLIENT **)p2;
 if (c1 == ((void*)0) || c2 == ((void*)0))
 {
  return 0;
 }

 return CmpIpAddr(&c1->IpAddress, &c2->IpAddress);
}
