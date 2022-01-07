
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_2__ {int len; } ;
struct mbuf {int m_len; int m_flags; TYPE_1__ m_pkthdr; scalar_t__ m_data; } ;


 scalar_t__ IS_P2ALIGNED (scalar_t__,int) ;
 int M_LEADINGSPACE (struct mbuf*) ;
 int M_PKTHDR ;
 struct mbuf* m_prepend (struct mbuf*,int,int) ;

struct mbuf *
m_prepend_2(struct mbuf *m, int len, int how, int align)
{
 if (M_LEADINGSPACE(m) >= len &&
     (!align || IS_P2ALIGNED((m->m_data - len), sizeof(u_int32_t)))) {
  m->m_data -= len;
  m->m_len += len;
 } else {
  m = m_prepend(m, len, how);
 }
 if ((m) && (m->m_flags & M_PKTHDR))
  m->m_pkthdr.len += len;
 return (m);
}
