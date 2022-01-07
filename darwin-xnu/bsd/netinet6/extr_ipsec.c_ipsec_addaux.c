
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct m_tag {int dummy; } ;
struct ipsec_tag {scalar_t__ history_count; scalar_t__ socket; } ;


 int IPSEC_TAG_SIZE ;
 int KERNEL_MODULE_TAG_ID ;
 int KERNEL_TAG_TYPE_IPSEC ;
 int M_DONTWAIT ;
 struct m_tag* m_tag_create (int ,int ,int ,int ,struct mbuf*) ;
 struct m_tag* m_tag_locate (struct mbuf*,int ,int ,int *) ;
 int m_tag_prepend (struct mbuf*,struct m_tag*) ;

__attribute__((used)) static struct ipsec_tag *
ipsec_addaux(
 struct mbuf *m)
{
 struct m_tag *tag;


 tag = m_tag_locate(m, KERNEL_MODULE_TAG_ID, KERNEL_TAG_TYPE_IPSEC, ((void*)0));

 if (tag == ((void*)0)) {
  struct ipsec_tag *itag;


  tag = m_tag_create(KERNEL_MODULE_TAG_ID, KERNEL_TAG_TYPE_IPSEC,
        IPSEC_TAG_SIZE, M_DONTWAIT, m);

  if (tag) {
   itag = (struct ipsec_tag*)(tag + 1);
   itag->socket = 0;
   itag->history_count = 0;

   m_tag_prepend(m, tag);
  }
 }

 return tag ? (struct ipsec_tag*)(tag + 1) : ((void*)0);
}
