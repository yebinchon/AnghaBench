
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u_int ;
struct TYPE_2__ {unsigned int len; } ;
struct mbuf {int m_flags; TYPE_1__ m_pkthdr; } ;


 int M_PKTHDR ;
 int VERIFY (int) ;
 unsigned int m_length2 (struct mbuf*,int *) ;

unsigned int
m_fixhdr(struct mbuf *m0)
{
 u_int len;

 VERIFY(m0->m_flags & M_PKTHDR);

 len = m_length2(m0, ((void*)0));
 m0->m_pkthdr.len = len;
 return (len);
}
