
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IP ;


 int SetIP (int *,int,int ,int ,int) ;

void GetLocalHostIP4(IP *ip)
{

 if (ip == ((void*)0))
 {
  return;
 }

 SetIP(ip, 127, 0, 0, 1);
}
