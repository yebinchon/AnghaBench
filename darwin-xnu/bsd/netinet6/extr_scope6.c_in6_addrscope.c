
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in6_addr {int* s6_addr8; } ;


 int IPV6_ADDR_SCOPE_GLOBAL ;



 scalar_t__ bcmp (int *,struct in6_addr*,int) ;
 int in6addr_loopback ;

int
in6_addrscope(struct in6_addr *addr)
{
 int scope;

 if (addr->s6_addr8[0] == 0xfe) {
  scope = addr->s6_addr8[1] & 0xc0;

  switch (scope) {
  case 0x80:
   return (129);
  case 0xc0:
   return (128);
  default:
   return (IPV6_ADDR_SCOPE_GLOBAL);
  }
 }

 if (addr->s6_addr8[0] == 0xff) {
  scope = addr->s6_addr8[1] & 0x0f;





  switch (scope) {
  case 130:
   return (130);
  case 129:
   return (129);
  case 128:
   return (128);
  default:
   return (IPV6_ADDR_SCOPE_GLOBAL);
  }
 }





 if (bcmp(&in6addr_loopback, addr, sizeof (*addr) - 1) == 0) {
  if (addr->s6_addr8[15] == 1)
   return (129);
  if (addr->s6_addr8[15] == 0)
   return (IPV6_ADDR_SCOPE_GLOBAL);
 }

 return (IPV6_ADDR_SCOPE_GLOBAL);
}
