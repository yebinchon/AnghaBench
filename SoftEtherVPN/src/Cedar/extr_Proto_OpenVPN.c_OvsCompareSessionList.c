
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ServerPort; int ServerIp; int ClientPort; int ClientIp; int Protocol; } ;
typedef TYPE_1__ OPENVPN_SESSION ;


 int COMPARE_RET (int ,int ) ;
 int CmpIpAddr (int *,int *) ;

int OvsCompareSessionList(void *p1, void *p2)
{
 OPENVPN_SESSION *s1, *s2;
 int i;

 if (p1 == ((void*)0) || p2 == ((void*)0))
 {
  return 0;
 }
 s1 = *(OPENVPN_SESSION **)p1;
 s2 = *(OPENVPN_SESSION **)p2;
 if (s1 == ((void*)0) || s2 == ((void*)0))
 {
  return 0;
 }

 i = CmpIpAddr(&s1->Protocol, &s2->Protocol);
 if (i != 0)
 {
  return i;
 }

 i = CmpIpAddr(&s1->ClientIp, &s2->ClientIp);
 if (i != 0)
 {
  return i;
 }

 i = COMPARE_RET(s1->ClientPort, s2->ClientPort);
 if (i != 0)
 {
  return i;
 }

 i = CmpIpAddr(&s1->ServerIp, &s2->ServerIp);
 if (i != 0)
 {
  return i;
 }

 i = COMPARE_RET(s1->ServerPort, s2->ServerPort);
 if (i != 0)
 {
  return i;
 }

 return 0;
}
