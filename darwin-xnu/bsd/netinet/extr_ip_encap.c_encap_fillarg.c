
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct m_tag {int dummy; } ;
struct encaptabtag {int arg; } ;
struct encaptab {int arg; } ;


 int KERNEL_MODULE_TAG_ID ;
 int KERNEL_TAG_TYPE_ENCAP ;
 int M_WAITOK ;
 struct m_tag* m_tag_create (int ,int ,int,int ,struct mbuf*) ;
 int m_tag_prepend (struct mbuf*,struct m_tag*) ;

__attribute__((used)) static void
encap_fillarg(
 struct mbuf *m,
 const struct encaptab *ep)
{
 struct m_tag *tag;
 struct encaptabtag *et;

 tag = m_tag_create(KERNEL_MODULE_TAG_ID, KERNEL_TAG_TYPE_ENCAP,
       sizeof(struct encaptabtag), M_WAITOK, m);

 if (tag != ((void*)0)) {
  et = (struct encaptabtag*)(tag + 1);
  et->arg = ep->arg;
  m_tag_prepend(m, tag);
 }
}
