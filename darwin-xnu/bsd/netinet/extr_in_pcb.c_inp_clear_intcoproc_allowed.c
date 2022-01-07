
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inpcb {int inp_route; int inp_flags2; } ;


 int INP2_INTCOPROC_ALLOWED ;
 int ROUTE_RELEASE (int *) ;

void
inp_clear_intcoproc_allowed(struct inpcb *inp)
{
 inp->inp_flags2 &= ~INP2_INTCOPROC_ALLOWED;


 ROUTE_RELEASE(&inp->inp_route);
}
