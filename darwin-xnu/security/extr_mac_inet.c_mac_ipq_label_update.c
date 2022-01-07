
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct label {int dummy; } ;
struct ipq {int ipq_label; } ;


 int MAC_PERFORM (int ,struct mbuf*,struct label*,struct ipq*,int ) ;
 int ipq_label_update ;
 struct label* mac_mbuf_to_label (struct mbuf*) ;

void
mac_ipq_label_update(struct mbuf *fragment, struct ipq *ipq)
{
 struct label *label;

 label = mac_mbuf_to_label(fragment);

 MAC_PERFORM(ipq_label_update, fragment, label, ipq, ipq->ipq_label);
}
