
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m_tag {scalar_t__ m_tag_id; scalar_t__ m_tag_type; int m_tag_len; } ;


 scalar_t__ KERNEL_MODULE_TAG_ID ;
 scalar_t__ KERNEL_TAG_TYPE_MACLABEL ;
 int VERIFY (int ) ;
 int bcopy (struct m_tag*,struct m_tag*,int ) ;
 struct m_tag* m_tag_alloc (scalar_t__,scalar_t__,int ,int) ;
 int m_tag_free (struct m_tag*) ;
 int mac_mbuf_tag_copy (struct m_tag*,struct m_tag*) ;
 scalar_t__ mac_mbuf_tag_init (struct m_tag*,int) ;

struct m_tag *
m_tag_copy(struct m_tag *t, int how)
{
 struct m_tag *p;

 VERIFY(t != ((void*)0));

 p = m_tag_alloc(t->m_tag_id, t->m_tag_type, t->m_tag_len, how);
 if (p == ((void*)0))
  return (((void*)0));
 bcopy(t + 1, p + 1, t->m_tag_len);
 return (p);
}
