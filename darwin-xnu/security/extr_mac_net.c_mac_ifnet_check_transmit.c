
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct label {int dummy; } ;
struct ifnet {int if_label; } ;


 int MAC_CHECK (int ,struct ifnet*,int ,struct mbuf*,struct label*,int,int) ;
 int ifnet_check_transmit ;
 int ifnet_lock_done (struct ifnet*) ;
 int ifnet_lock_shared (struct ifnet*) ;
 struct label* mac_mbuf_to_label (struct mbuf*) ;

int
mac_ifnet_check_transmit(struct ifnet *ifp, struct mbuf *mbuf, int family,
    int type)
{
 struct label *label;
 int error;

 label = mac_mbuf_to_label(mbuf);

 ifnet_lock_shared(ifp);
 MAC_CHECK(ifnet_check_transmit, ifp, ifp->if_label, mbuf, label,
     family, type);
 ifnet_lock_done(ifp);

 return (error);
}
