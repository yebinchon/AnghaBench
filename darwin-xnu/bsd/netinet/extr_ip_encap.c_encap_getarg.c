
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct m_tag {int dummy; } ;
struct encaptabtag {void* arg; } ;


 int KERNEL_MODULE_TAG_ID ;
 int KERNEL_TAG_TYPE_ENCAP ;
 int m_tag_delete (struct mbuf*,struct m_tag*) ;
 struct m_tag* m_tag_locate (struct mbuf*,int ,int ,int *) ;

void *
encap_getarg(struct mbuf *m)
{
 struct m_tag *tag;
 struct encaptabtag *et;
 void *p = ((void*)0);

 tag = m_tag_locate(m, KERNEL_MODULE_TAG_ID, KERNEL_TAG_TYPE_ENCAP, ((void*)0));
 if (tag) {
  et = (struct encaptabtag*)(tag + 1);
  p = et->arg;
  m_tag_delete(m, tag);
 }

 return p;
}
