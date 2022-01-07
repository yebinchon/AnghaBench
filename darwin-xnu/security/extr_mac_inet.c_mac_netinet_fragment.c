
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct label {int dummy; } ;


 int MAC_PERFORM (int ,struct mbuf*,struct label*,struct mbuf*,struct label*) ;
 struct label* mac_mbuf_to_label (struct mbuf*) ;
 int netinet_fragment ;

void
mac_netinet_fragment(struct mbuf *datagram, struct mbuf *fragment)
{
 struct label *datagramlabel, *fragmentlabel;

 datagramlabel = mac_mbuf_to_label(datagram);
 fragmentlabel = mac_mbuf_to_label(fragment);

 MAC_PERFORM(netinet_fragment, datagram, datagramlabel, fragment,
     fragmentlabel);
}
