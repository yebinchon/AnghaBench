
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ServerPort; int ClientPort; int ServerIP; int ClientIP; } ;
typedef TYPE_1__ IKE_CLIENT ;


 int COMPARE_RET (int ,int ) ;
 int CmpIpAddr (int *,int *) ;

int CmpIkeClient(void *p1, void *p2)
{
 IKE_CLIENT *c1, *c2;
 int r;

 if (p1 == ((void*)0) || p2 == ((void*)0))
 {
  return 0;
 }
 c1 = *(IKE_CLIENT **)p1;
 c2 = *(IKE_CLIENT **)p2;
 if (c1 == ((void*)0) || c2 == ((void*)0))
 {
  return 0;
 }

 r = CmpIpAddr(&c1->ClientIP, &c2->ClientIP);
 if (r != 0)
 {
  return r;
 }

 r = CmpIpAddr(&c1->ServerIP, &c2->ServerIP);
 if (r != 0)
 {
  return r;
 }

 r = COMPARE_RET(c1->ClientPort, c2->ClientPort);
 if (r != 0)
 {
  return r;
 }

 r = COMPARE_RET(c1->ServerPort, c2->ServerPort);
 if (r != 0)
 {
  return r;
 }

 return 0;
}
