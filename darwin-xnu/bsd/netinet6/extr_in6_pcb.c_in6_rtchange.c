
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inpcb {int in6p_route; } ;


 int ROUTE_RELEASE (int *) ;

void
in6_rtchange(struct inpcb *inp, int errno)
{
#pragma unused(errno)




 ROUTE_RELEASE(&inp->in6p_route);
}
