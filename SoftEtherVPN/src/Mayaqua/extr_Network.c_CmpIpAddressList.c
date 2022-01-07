
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_7__ {scalar_t__ ipv6_scope_id; } ;
typedef TYPE_1__ IP ;


 scalar_t__ COMPARE_RET (scalar_t__,scalar_t__) ;
 scalar_t__ CmpIpAddr (TYPE_1__*,TYPE_1__*) ;
 scalar_t__ IsIP6 (TYPE_1__*) ;
 int IsLocalHostIP (TYPE_1__*) ;
 int IsZeroIP (TYPE_1__*) ;

int CmpIpAddressList(void *p1, void *p2)
{
 IP *ip1, *ip2;
 UINT r;

 if (p1 == ((void*)0) || p2 == ((void*)0))
 {
  return 0;
 }
 ip1 = *(IP **)p1;
 ip2 = *(IP **)p2;
 if (ip1 == ((void*)0) || ip2 == ((void*)0))
 {
  return 0;
 }


 r = COMPARE_RET(IsIP6(ip1), IsIP6(ip2));
 if (r != 0)
 {
  return r;
 }


 if (IsZeroIP(ip1) && IsZeroIP(ip2) == 0)
 {
  return 1;
 }
 if (IsZeroIP(ip1) == 0 && IsZeroIP(ip2))
 {
  return -1;
 }


 if (IsLocalHostIP(ip1) && IsLocalHostIP(ip2) == 0)
 {
  return 1;
 }
 if (IsLocalHostIP(ip1) == 0 && IsLocalHostIP(ip2))
 {
  return -1;
 }


 r = CmpIpAddr(ip1, ip2);
 if (r != 0)
 {
  return r;
 }


 if (IsIP6(ip1))
 {
  r = COMPARE_RET(ip1->ipv6_scope_id, ip2->ipv6_scope_id);
 }
 else
 {
  r = 0;
 }

 return r;
}
