
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inpcb {int inp_route; int inp_flags2; } ;


 int INP2_AWDL_UNRESTRICTED ;
 int ROUTE_RELEASE (int *) ;

void
inp_set_awdl_unrestricted(struct inpcb *inp)
{
 inp->inp_flags2 |= INP2_AWDL_UNRESTRICTED;


 ROUTE_RELEASE(&inp->inp_route);
}
