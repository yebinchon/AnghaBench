
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int so_flags1; } ;
struct inpcb {struct ifnet* inp_last_outifp; } ;
struct in6pcb {struct ifnet* in6p_last_outifp; } ;
struct ifnet {int if_eflags; } ;


 int IFEF_QOSMARKING_CAPABLE ;
 int IFEF_QOSMARKING_ENABLED ;
 int NETSVC_MRKNG_LVL_L2 ;
 int NETSVC_MRKNG_LVL_L3L2_ALL ;
 int NETSVC_MRKNG_LVL_L3L2_BK ;
 int NETSVC_MRKNG_UNKNOWN ;


 int SOCK_DOM (struct socket*) ;
 int SOF1_QOSMARKING_ALLOWED ;
 struct in6pcb* sotoin6pcb (struct socket*) ;
 struct inpcb* sotoinpcb (struct socket*) ;

int
so_get_netsvc_marking_level(struct socket *so)
{
 int marking_level = NETSVC_MRKNG_UNKNOWN;
 struct ifnet *ifp = ((void*)0);

 switch (SOCK_DOM(so)) {
  case 129: {
   struct inpcb *inp = sotoinpcb(so);

   if (inp != ((void*)0))
    ifp = inp->inp_last_outifp;
   break;
  }
  case 128: {
   struct in6pcb *in6p = sotoin6pcb(so);

   if (in6p != ((void*)0))
    ifp = in6p->in6p_last_outifp;
   break;
  }
  default:
   break;
 }
 if (ifp != ((void*)0)) {
  if ((ifp->if_eflags &
      (IFEF_QOSMARKING_ENABLED | IFEF_QOSMARKING_CAPABLE)) ==
      (IFEF_QOSMARKING_ENABLED | IFEF_QOSMARKING_CAPABLE)) {
   if ((so->so_flags1 & SOF1_QOSMARKING_ALLOWED))
    marking_level = NETSVC_MRKNG_LVL_L3L2_ALL;
   else
    marking_level = NETSVC_MRKNG_LVL_L3L2_BK;
  } else {
   marking_level = NETSVC_MRKNG_LVL_L2;
  }
 }
 return (marking_level);
}
