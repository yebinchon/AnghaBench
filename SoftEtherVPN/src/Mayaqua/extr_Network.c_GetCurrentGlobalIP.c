
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IP ;


 int Copy (int *,int *,int) ;
 int Lock (int ) ;
 int Unlock (int ) ;
 int Zero (int *,int) ;
 int current_global_ip_lock ;
 int current_global_ip_set ;
 int current_glocal_ipv4 ;
 int current_glocal_ipv6 ;

bool GetCurrentGlobalIP(IP *ip, bool ipv6)
{
 bool ret = 0;

 if (ip == ((void*)0))
 {
  return 0;
 }

 Zero(ip, sizeof(IP));

 Lock(current_global_ip_lock);
 {
  if (ipv6 == 0)
  {
   Copy(ip, &current_glocal_ipv4, sizeof(IP));
  }
  else
  {
   Copy(ip, &current_glocal_ipv6, sizeof(IP));
  }

  ret = current_global_ip_set;
 }
 Unlock(current_global_ip_lock);

 return ret;
}
