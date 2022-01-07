
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inpcb {int inp_route; int inp_flags2; } ;


 int INP2_NO_IFF_EXPENSIVE ;
 int ROUTE_RELEASE (int *) ;

void
inp_set_noexpensive(struct inpcb *inp)
{
 inp->inp_flags2 |= INP2_NO_IFF_EXPENSIVE;


 ROUTE_RELEASE(&inp->inp_route);
}
