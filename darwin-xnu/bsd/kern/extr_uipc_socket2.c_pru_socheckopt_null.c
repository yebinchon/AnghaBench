
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockopt {int dummy; } ;
struct socket {int dummy; } ;



int
pru_socheckopt_null(struct socket *so, struct sockopt *sopt)
{
#pragma unused(so, sopt)



 return (0);
}
