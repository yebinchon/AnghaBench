
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inpcb {int inp_route; int inp_flags; struct ifnet* inp_boundifp; } ;
struct ifnet {int dummy; } ;


 int ENXIO ;
 unsigned int IFSCOPE_NONE ;
 int INP_BOUND_IF ;
 int ROUTE_RELEASE (int *) ;
 int VERIFY (int) ;
 scalar_t__ if_index ;
 struct ifnet** ifindex2ifnet ;
 int ifnet_head_done () ;
 int ifnet_head_lock_shared () ;

int
inp_bindif(struct inpcb *inp, unsigned int ifscope, struct ifnet **pifp)
{
 struct ifnet *ifp = ((void*)0);

 ifnet_head_lock_shared();
 if ((ifscope > (unsigned)if_index) || (ifscope != IFSCOPE_NONE &&
     (ifp = ifindex2ifnet[ifscope]) == ((void*)0))) {
  ifnet_head_done();
  return (ENXIO);
 }
 ifnet_head_done();

 VERIFY(ifp != ((void*)0) || ifscope == IFSCOPE_NONE);
 inp->inp_boundifp = ifp;
 if (inp->inp_boundifp == ((void*)0))
  inp->inp_flags &= ~INP_BOUND_IF;
 else
  inp->inp_flags |= INP_BOUND_IF;


 ROUTE_RELEASE(&inp->inp_route);

 if (pifp != ((void*)0))
  *pifp = ifp;

 return (0);
}
