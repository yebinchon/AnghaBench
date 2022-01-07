
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct label {int dummy; } ;
struct ifnet {int if_label; } ;


 int MAC_PERFORM (int ,struct ifnet*,int ,struct mbuf*,struct label*) ;
 struct label* mac_mbuf_to_label (struct mbuf*) ;
 int mbuf_label_associate_linklayer ;

void
mac_mbuf_label_associate_linklayer(struct ifnet *ifp, struct mbuf *mbuf)
{
 struct label *m_label;



 m_label = mac_mbuf_to_label(mbuf);

 MAC_PERFORM(mbuf_label_associate_linklayer, ifp, ifp->if_label, mbuf,
     m_label);
}
