
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_2__ {int MyPort; int MyIp; int YourPort; int YourIp; } ;
typedef TYPE_1__ RUDP_SESSION ;


 scalar_t__ COMPARE_RET (int ,int ) ;
 scalar_t__ CmpIpAddr (int *,int *) ;

int RUDPCompareSessionList(void *p1, void *p2)
{
 RUDP_SESSION *s1, *s2;
 UINT r;

 if (p1 == ((void*)0) || p2 == ((void*)0))
 {
  return 0;
 }
 s1 = *((RUDP_SESSION **)p1);
 s2 = *((RUDP_SESSION **)p2);
 if (s1 == ((void*)0) || s2 == ((void*)0))
 {
  return 0;
 }

 r = CmpIpAddr(&s1->YourIp, &s2->YourIp);
 if (r != 0)
 {
  return r;
 }

 r = COMPARE_RET(s1->YourPort, s2->YourPort);
 if (r != 0)
 {
  return r;
 }

 r = CmpIpAddr(&s1->MyIp, &s2->MyIp);
 if (r != 0)
 {
  return r;
 }

 r = COMPARE_RET(s1->MyPort, s2->MyPort);
 if (r != 0)
 {
  return r;
 }

 return 0;
}
