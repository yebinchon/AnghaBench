
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ is_pot (unsigned int) ;
 int next_pow2 (unsigned int) ;

__attribute__((used)) static unsigned get_pot(unsigned x)
{
   return (is_pot(x) ? x : next_pow2(x));
}
