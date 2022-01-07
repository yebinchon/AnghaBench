
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IP ;


 int Copy (int *,int *,int) ;
 scalar_t__ IsZeroIp (int *) ;
 int Lock (int ) ;
 int Unlock (int ) ;
 int current_global_ip_lock ;
 int current_global_ip_set ;
 int current_glocal_ipv4 ;
 int current_glocal_ipv6 ;

void SetCurrentGlobalIP(IP *ip, bool ipv6)
{

 if (ip == ((void*)0))
 {
  return;
 }

 if (IsZeroIp(ip))
 {
  return;
 }

 Lock(current_global_ip_lock);
 {
  if (ipv6 == 0)
  {
   Copy(&current_glocal_ipv4, ip, sizeof(IP));
  }
  else
  {
   Copy(&current_glocal_ipv6, ip, sizeof(IP));
  }

  current_global_ip_set = 1;
 }
 Unlock(current_global_ip_lock);
}
