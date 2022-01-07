
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ Protocol; scalar_t__ PublicIp; scalar_t__ PublicPort; scalar_t__ DestIp; scalar_t__ DestPort; } ;
typedef TYPE_1__ NATIVE_NAT_ENTRY ;


 int COMPARE_RET (scalar_t__,scalar_t__) ;
 scalar_t__ NAT_TCP ;

int CmpNativeNatTableForRecv(void *p1, void *p2)
{
 int r;
 NATIVE_NAT_ENTRY *e1, *e2;
 if (p1 == ((void*)0) || p2 == ((void*)0))
 {
  return 0;
 }
 e1 = *(NATIVE_NAT_ENTRY **)p1;
 e2 = *(NATIVE_NAT_ENTRY **)p2;
 if (e1 == ((void*)0) || e2 == ((void*)0))
 {
  return 0;
 }

 r = COMPARE_RET(e1->Protocol, e2->Protocol);
 if (r != 0)
 {
  return r;
 }

 r = COMPARE_RET(e1->PublicIp, e2->PublicIp);
 if (r != 0)
 {
  return r;
 }

 r = COMPARE_RET(e1->PublicPort, e2->PublicPort);
 if (r != 0)
 {
  return r;
 }

 if (e1->Protocol == NAT_TCP)
 {
  r = COMPARE_RET(e1->DestIp, e2->DestIp);
  if (r != 0)
  {
   return r;
  }

  r = COMPARE_RET(e1->DestPort, e2->DestPort);
  if (r != 0)
  {
   return r;
  }
 }

 return 0;
}
