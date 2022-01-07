
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m_tag {int dummy; } ;
struct label {int dummy; } ;


 int MAC_PERFORM (int ,struct label*) ;
 int mac_label_destroy (struct label*) ;
 int mbuf_label_destroy ;

void
mac_mbuf_tag_destroy(struct m_tag *tag)
{
 struct label *label;

 label = (struct label *)(tag + 1);
 MAC_PERFORM(mbuf_label_destroy, label);
 mac_label_destroy(label);

 return;
}
