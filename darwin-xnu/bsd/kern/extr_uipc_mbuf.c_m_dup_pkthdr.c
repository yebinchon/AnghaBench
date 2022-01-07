
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int m_flags; int m_pkthdr; int m_pktdat; int m_data; } ;


 int M_COPYFLAGS ;
 int M_EXT ;
 int M_PKTHDR ;
 int VERIFY (int) ;
 int m_redzone_init (struct mbuf*) ;
 int m_redzone_verify (struct mbuf*) ;
 int m_tag_copy_chain (struct mbuf*,struct mbuf*,int) ;
 int m_tag_delete_chain (struct mbuf*,int *) ;
 int m_tag_init (struct mbuf*,int ) ;

__attribute__((used)) static int
m_dup_pkthdr(struct mbuf *to, struct mbuf *from, int how)
{
 VERIFY(from->m_flags & M_PKTHDR);


 m_redzone_verify(from);

 if (to->m_flags & M_PKTHDR) {

  m_redzone_verify(to);

  m_tag_delete_chain(to, ((void*)0));
 }
 to->m_flags = (from->m_flags & M_COPYFLAGS) | (to->m_flags & M_EXT);
 if ((to->m_flags & M_EXT) == 0)
  to->m_data = to->m_pktdat;
 to->m_pkthdr = from->m_pkthdr;
 m_redzone_init(to);
 m_tag_init(to, 0);
 return (m_tag_copy_chain(to, from, how));
}
