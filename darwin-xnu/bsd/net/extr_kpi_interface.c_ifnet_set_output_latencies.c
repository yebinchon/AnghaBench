
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct if_latencies {scalar_t__ eff_lt; scalar_t__ max_lt; } ;
struct ifclassq {int dummy; } ;
struct ifnet {struct if_latencies if_output_lt; struct ifclassq if_snd; } ;
typedef int errno_t ;
typedef int boolean_t ;


 int CLASSQ_EV_LINK_LATENCY ;
 int IFCQ_LOCK (struct ifclassq*) ;
 int IFCQ_LOCK_ASSERT_HELD (struct ifclassq*) ;
 int IFCQ_UNLOCK (struct ifclassq*) ;
 int VERIFY (int) ;
 int ifnet_update_sndq (struct ifclassq*,int ) ;

errno_t
ifnet_set_output_latencies(struct ifnet *ifp, struct if_latencies *lt,
    boolean_t locked)
{
 struct if_latencies old_lt;
 struct ifclassq *ifq;

 VERIFY(ifp != ((void*)0) && lt != ((void*)0));

 ifq = &ifp->if_snd;
 if (!locked)
  IFCQ_LOCK(ifq);
 IFCQ_LOCK_ASSERT_HELD(ifq);

 old_lt = ifp->if_output_lt;
 if (lt->eff_lt != 0)
  ifp->if_output_lt.eff_lt = lt->eff_lt;
 if (lt->max_lt != 0)
  ifp->if_output_lt.max_lt = lt->max_lt;
 if (ifp->if_output_lt.eff_lt > ifp->if_output_lt.max_lt)
  ifp->if_output_lt.max_lt = ifp->if_output_lt.eff_lt;
 else if (ifp->if_output_lt.eff_lt == 0)
  ifp->if_output_lt.eff_lt = ifp->if_output_lt.max_lt;


 if (old_lt.eff_lt != ifp->if_output_lt.eff_lt ||
     old_lt.max_lt != ifp->if_output_lt.max_lt)
  ifnet_update_sndq(ifq, CLASSQ_EV_LINK_LATENCY);

 if (!locked)
  IFCQ_UNLOCK(ifq);

 return (0);
}
