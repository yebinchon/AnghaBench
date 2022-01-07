
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IP ;


 int Zero (int *,int) ;

void ZeroIP4(IP *ip)
{

 if (ip == ((void*)0))
 {
  return;
 }

 Zero(ip, sizeof(IP));
}
