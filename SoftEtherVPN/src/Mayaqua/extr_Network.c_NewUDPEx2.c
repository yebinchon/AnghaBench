
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int SOCK ;
typedef int IP ;


 int * NewUDP4 (int ,int *) ;
 int * NewUDP6 (int ,int *) ;

SOCK *NewUDPEx2(UINT port, bool ipv6, IP *ip)
{
 if (ipv6 == 0)
 {
  return NewUDP4(port, ip);
 }
 else
 {
  return NewUDP6(port, ip);
 }
}
