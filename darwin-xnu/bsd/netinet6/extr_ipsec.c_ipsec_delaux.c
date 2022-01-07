
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct m_tag {int dummy; } ;


 int KERNEL_MODULE_TAG_ID ;
 int KERNEL_TAG_TYPE_IPSEC ;
 int m_tag_delete (struct mbuf*,struct m_tag*) ;
 struct m_tag* m_tag_locate (struct mbuf*,int ,int ,int *) ;

void
ipsec_delaux(
 struct mbuf *m)
{
 struct m_tag *tag;

 tag = m_tag_locate(m, KERNEL_MODULE_TAG_ID, KERNEL_TAG_TYPE_IPSEC, ((void*)0));

 if (tag) {
  m_tag_delete(m, tag);
 }
}
