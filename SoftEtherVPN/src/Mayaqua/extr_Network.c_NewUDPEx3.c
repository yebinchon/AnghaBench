
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int SOCK ;
typedef int IP ;


 scalar_t__ IsIP4 (int *) ;
 int * NewUDPEx2 (int ,int,int *) ;

SOCK *NewUDPEx3(UINT port, IP *ip)
{

 if (ip == ((void*)0))
 {
  return NewUDPEx2(port, 0, ((void*)0));
 }

 if (IsIP4(ip))
 {
  return NewUDPEx2(port, 0, ip);
 }
 else
 {
  return NewUDPEx2(port, 1, ip);
 }
}
