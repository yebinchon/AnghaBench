
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int local_ip ;
typedef int UINT ;
typedef int SOCK ;
typedef int IP ;


 int GetBestLocalIpForTarget (int *,int *) ;
 int IsIP4 (int *) ;
 scalar_t__ IsZeroIP (int *) ;
 int * NewUDP4 (int ,int *) ;
 int Zero (int *,int) ;

SOCK *NewUDP4ForSpecificIp(IP *target_ip, UINT port)
{
 SOCK *s;
 IP local_ip;

 if (target_ip == ((void*)0) || IsZeroIP(target_ip) || IsIP4(target_ip) == 0)
 {
  target_ip = ((void*)0);
 }

 Zero(&local_ip, sizeof(local_ip));
 GetBestLocalIpForTarget(&local_ip, target_ip);

 s = NewUDP4(port, &local_ip);

 if (s == ((void*)0))
 {
  s = NewUDP4(port, ((void*)0));
 }

 return s;
}
