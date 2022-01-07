
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IP ;


 scalar_t__ CmpIpAddr (int *,int *) ;
 int GetLocalHostIP6 (int *) ;
 int IsIP6 (int *) ;

bool IsLocalHostIP6(IP *ip)
{
 IP local;

 if (ip == ((void*)0))
 {
  return 0;
 }
 if (IsIP6(ip) == 0)
 {
  return 0;
 }

 GetLocalHostIP6(&local);

 if (CmpIpAddr(&local, ip) == 0)
 {
  return 1;
 }

 return 0;
}
