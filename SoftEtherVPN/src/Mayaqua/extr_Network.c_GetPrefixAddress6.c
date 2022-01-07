
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int ipv6_scope_id; } ;
typedef TYPE_1__ IP ;


 int IPAnd6 (TYPE_1__*,TYPE_1__*,TYPE_1__*) ;

void GetPrefixAddress6(IP *dst, IP *ip, IP *subnet)
{

 if (dst == ((void*)0) || ip == ((void*)0) || subnet == ((void*)0))
 {
  return;
 }

 IPAnd6(dst, ip, subnet);

 dst->ipv6_scope_id = ip->ipv6_scope_id;
}
