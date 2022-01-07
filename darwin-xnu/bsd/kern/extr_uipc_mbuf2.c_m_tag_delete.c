
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct m_tag {int dummy; } ;


 int m_tag_free (struct m_tag*) ;
 int m_tag_unlink (struct mbuf*,struct m_tag*) ;

void
m_tag_delete(struct mbuf *m, struct m_tag *t)
{
 m_tag_unlink(m, t);
 m_tag_free(t);
}
