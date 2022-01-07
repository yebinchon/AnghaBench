
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int IpAddress; } ;
typedef TYPE_1__ NON_SSL ;


 int CmpIpAddr (int *,int *) ;

int CompareNoSslList(void *p1, void *p2)
{
 NON_SSL *n1, *n2;
 if (p1 == ((void*)0) || p2 == ((void*)0))
 {
  return 0;
 }
 n1 = *(NON_SSL **)p1;
 n2 = *(NON_SSL **)p2;
 if (n1 == ((void*)0) || n2 == ((void*)0))
 {
  return 0;
 }
 return CmpIpAddr(&n1->IpAddress, &n2->IpAddress);
}
