
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AF_INET ;
 unsigned int primary6_ifscope ;
 unsigned int primary_ifscope ;

unsigned int
get_primary_ifscope(int af)
{
 return (af == AF_INET ? primary_ifscope : primary6_ifscope);
}
