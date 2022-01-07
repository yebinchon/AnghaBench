
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IP ;


 scalar_t__ CmpIpAddr (int *,int *) ;
 int IPAnd4 (int *,int *,int *) ;
 int IsIP4 (int *) ;

bool IsInSameNetwork4(IP *a1, IP *a2, IP *subnet)
{
 IP net1, net2;

 if (IsIP4(a1) == 0 || IsIP4(a2) == 0 || IsIP4(subnet) == 0)
 {
  return 0;
 }

 IPAnd4(&net1, a1, subnet);
 IPAnd4(&net2, a2, subnet);

 if (CmpIpAddr(&net1, &net2) == 0)
 {
  return 1;
 }

 return 0;
}
