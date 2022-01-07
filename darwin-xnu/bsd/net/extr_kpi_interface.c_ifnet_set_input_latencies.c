
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct if_latencies {scalar_t__ eff_lt; scalar_t__ max_lt; } ;
struct ifnet {struct if_latencies if_input_lt; } ;
typedef int errno_t ;


 int CLASSQ_EV_LINK_LATENCY ;
 int VERIFY (int) ;
 int ifnet_update_rcv (struct ifnet*,int ) ;

errno_t
ifnet_set_input_latencies(struct ifnet *ifp, struct if_latencies *lt)
{
 struct if_latencies old_lt;

 VERIFY(ifp != ((void*)0) && lt != ((void*)0));

 old_lt = ifp->if_input_lt;
 if (lt->eff_lt != 0)
  ifp->if_input_lt.eff_lt = lt->eff_lt;
 if (lt->max_lt != 0)
  ifp->if_input_lt.max_lt = lt->max_lt;
 if (ifp->if_input_lt.eff_lt > ifp->if_input_lt.max_lt)
  ifp->if_input_lt.max_lt = ifp->if_input_lt.eff_lt;
 else if (ifp->if_input_lt.eff_lt == 0)
  ifp->if_input_lt.eff_lt = ifp->if_input_lt.max_lt;

 if (old_lt.eff_lt != ifp->if_input_lt.eff_lt ||
     old_lt.max_lt != ifp->if_input_lt.max_lt)
  ifnet_update_rcv(ifp, CLASSQ_EV_LINK_LATENCY);

 return (0);
}
