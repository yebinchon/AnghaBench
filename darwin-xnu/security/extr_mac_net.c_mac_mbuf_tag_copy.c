
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m_tag {int dummy; } ;
struct label {int dummy; } ;


 int MAC_PERFORM (int ,struct label*,struct label*) ;
 int mbuf_label_copy ;

void
mac_mbuf_tag_copy(struct m_tag *src, struct m_tag *dest)
{
 struct label *src_label, *dest_label;

 src_label = (struct label *)(src + 1);
 dest_label = (struct label *)(dest + 1);

 if (src_label == ((void*)0) || dest_label == ((void*)0))
  return;





 MAC_PERFORM(mbuf_label_copy, src_label, dest_label);

 return;
}
