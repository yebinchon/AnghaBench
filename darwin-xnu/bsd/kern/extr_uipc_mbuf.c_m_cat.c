
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct mbuf {int m_flags; int m_len; struct mbuf* m_next; int * m_dat; int * m_data; } ;


 size_t MLEN ;
 int MTOD (struct mbuf*,int ) ;
 int M_EXT ;
 int bcopy (int,int,int ) ;
 int caddr_t ;
 struct mbuf* m_free (struct mbuf*) ;

void
m_cat(struct mbuf *m, struct mbuf *n)
{
 while (m->m_next)
  m = m->m_next;
 while (n) {
  if ((m->m_flags & M_EXT) ||
      m->m_data + m->m_len + n->m_len >= &m->m_dat[MLEN]) {

   m->m_next = n;
   return;
  }

  bcopy(MTOD(n, caddr_t), MTOD(m, caddr_t) + m->m_len,
      (u_int)n->m_len);
  m->m_len += n->m_len;
  n = m_free(n);
 }
}
