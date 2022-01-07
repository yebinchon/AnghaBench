
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct label {int dummy; } ;


 int MAC_PERFORM (int ,struct label*,struct label*) ;
 struct label* mac_mbuf_to_label (struct mbuf*) ;
 int mbuf_label_copy ;

void
mac_mbuf_label_copy(struct mbuf *m_from, struct mbuf *m_to)
{
 struct label *src_label, *dest_label;

 src_label = mac_mbuf_to_label(m_from);
 dest_label = mac_mbuf_to_label(m_to);

 MAC_PERFORM(mbuf_label_copy, src_label, dest_label);
}
