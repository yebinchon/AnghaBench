
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct ifnet {int if_eflags; scalar_t__ if_output_sched_model; int if_snd; } ;
typedef int errno_t ;
typedef scalar_t__ classq_pkt_type_t ;


 int CLASSQ_DEQUEUE_MAX_BYTE_LIMIT ;
 int EINVAL ;
 int ENXIO ;
 int IFEF_TXSTART ;
 scalar_t__ IFNET_SCHED_MODEL_MAX ;
 scalar_t__ QP_MBUF ;
 int VERIFY (int) ;
 int ifclassq_dequeue (int *,int,int ,void**,int *,int *,int *,scalar_t__*) ;
 int ifnet_decr_iorefcnt (struct ifnet*) ;
 int ifnet_is_attached (struct ifnet*,int) ;

errno_t
ifnet_dequeue(struct ifnet *ifp, struct mbuf **mp)
{
 errno_t rc;
 classq_pkt_type_t ptype;
 if (ifp == ((void*)0) || mp == ((void*)0))
  return (EINVAL);
 else if (!(ifp->if_eflags & IFEF_TXSTART) ||
     ifp->if_output_sched_model >= IFNET_SCHED_MODEL_MAX)
  return (ENXIO);
 if (!ifnet_is_attached(ifp, 1))
  return (ENXIO);

 rc = ifclassq_dequeue(&ifp->if_snd, 1, CLASSQ_DEQUEUE_MAX_BYTE_LIMIT,
     (void **)mp, ((void*)0), ((void*)0), ((void*)0), &ptype);
 VERIFY((*mp == ((void*)0)) || (ptype == QP_MBUF));
 ifnet_decr_iorefcnt(ifp);

 return (rc);
}
