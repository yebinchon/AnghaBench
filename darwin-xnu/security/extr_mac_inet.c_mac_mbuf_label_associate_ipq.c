
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct label {int dummy; } ;
struct ipq {int ipq_label; } ;


 int MAC_PERFORM (int ,struct ipq*,int ,struct mbuf*,struct label*) ;
 struct label* mac_mbuf_to_label (struct mbuf*) ;
 int mbuf_label_associate_ipq ;

void
mac_mbuf_label_associate_ipq(struct ipq *ipq, struct mbuf *m)
{
 struct label *label;

 label = mac_mbuf_to_label(m);

 MAC_PERFORM(mbuf_label_associate_ipq, ipq, ipq->ipq_label, m, label);
}
