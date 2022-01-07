
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ ipv6_scope_id; } ;
typedef TYPE_1__ IP ;


 scalar_t__ CmpIpAddr (TYPE_1__*,TYPE_1__*) ;
 int GetPrefixAddress6 (TYPE_1__*,TYPE_1__*,TYPE_1__*) ;
 int IsIP6 (TYPE_1__*) ;

bool IsInSameNetwork6(IP *a1, IP *a2, IP *subnet)
{
 IP prefix1, prefix2;

 if (IsIP6(a1) == 0 || IsIP6(a2) == 0 || IsIP6(subnet) == 0)
 {
  return 0;
 }

 if (a1->ipv6_scope_id != a2->ipv6_scope_id)
 {
  return 0;
 }

 GetPrefixAddress6(&prefix1, a1, subnet);
 GetPrefixAddress6(&prefix2, a2, subnet);

 if (CmpIpAddr(&prefix1, &prefix2) == 0)
 {
  return 1;
 }

 return 0;
}
