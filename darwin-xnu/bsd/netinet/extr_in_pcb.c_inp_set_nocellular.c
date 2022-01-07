
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inpcb {int inp_route; int inp_flags; } ;


 int INP_NO_IFT_CELLULAR ;
 int ROUTE_RELEASE (int *) ;

void
inp_set_nocellular(struct inpcb *inp)
{
 inp->inp_flags |= INP_NO_IFT_CELLULAR;


 ROUTE_RELEASE(&inp->inp_route);
}
