
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AF_INET ;
 unsigned int primary6_ifscope ;
 unsigned int primary_ifscope ;

void
set_primary_ifscope(int af, unsigned int ifscope)
{
 if (af == AF_INET)
  primary_ifscope = ifscope;
 else
  primary6_ifscope = ifscope;
}
