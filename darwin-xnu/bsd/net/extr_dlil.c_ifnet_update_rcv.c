
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int if_eflags; int if_poll_update; } ;
typedef int cqev_t ;



 int IFEF_RXPOLL ;
 int net_rxpoll ;

void
ifnet_update_rcv(struct ifnet *ifp, cqev_t ev)
{
 switch (ev) {
 case 128:
  if (net_rxpoll && (ifp->if_eflags & IFEF_RXPOLL))
   ifp->if_poll_update++;
  break;

 default:
  break;
 }
}
