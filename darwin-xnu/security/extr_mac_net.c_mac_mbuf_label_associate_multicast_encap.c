
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct label {int dummy; } ;
struct ifnet {int if_label; } ;


 int MAC_PERFORM (int ,struct mbuf*,struct label*,struct ifnet*,int ,struct mbuf*,struct label*) ;
 struct label* mac_mbuf_to_label (struct mbuf*) ;
 int mbuf_label_associate_multicast_encap ;

void
mac_mbuf_label_associate_multicast_encap(struct mbuf *oldmbuf,
    struct ifnet *ifp, struct mbuf *newmbuf)
{
 struct label *oldmbuflabel, *newmbuflabel;

 oldmbuflabel = mac_mbuf_to_label(oldmbuf);
 newmbuflabel = mac_mbuf_to_label(newmbuf);



 MAC_PERFORM(mbuf_label_associate_multicast_encap, oldmbuf, oldmbuflabel,
     ifp, ifp->if_label, newmbuf, newmbuflabel);
}
