
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct label {int dummy; } ;


 int MAC_PERFORM (int ,struct mbuf*,struct label*) ;
 struct label* mac_mbuf_to_label (struct mbuf*) ;
 int netinet_tcp_reply ;

void
mac_netinet_tcp_reply(struct mbuf *m)
{
 struct label *label;

 label = mac_mbuf_to_label(m);

 MAC_PERFORM(netinet_tcp_reply, m, label);
}
