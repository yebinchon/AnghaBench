
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct socket {int so_restrictions; } ;


 int SO_RESTRICT_DENY_CELLULAR ;
 int SO_RESTRICT_DENY_EXPENSIVE ;
 int SO_RESTRICT_DENY_IN ;
 int SO_RESTRICT_DENY_OUT ;

uint32_t
so_get_restrictions(struct socket *so)
{
 return (so->so_restrictions & (SO_RESTRICT_DENY_IN |
     SO_RESTRICT_DENY_OUT |
     SO_RESTRICT_DENY_CELLULAR | SO_RESTRICT_DENY_EXPENSIVE));
}
