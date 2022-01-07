
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;


 int M_COPYBACK0_COPYBACK ;
 int M_COPYBACK0_COW ;
 int VERIFY (int) ;
 int m_copyback0 (struct mbuf**,int,int,void const*,int,int) ;
 int m_freem (struct mbuf*) ;
 int m_length (struct mbuf*) ;

struct mbuf *
m_copyback_cow(struct mbuf *m0, int off, int len, const void *cp, int how)
{
 int error;


 VERIFY(off + len <= m_length(m0));

 error = m_copyback0(&m0, off, len, cp,
     M_COPYBACK0_COPYBACK | M_COPYBACK0_COW, how);
 if (error) {




  m_freem(m0);
  return (((void*)0));
 }
 return (m0);
}
