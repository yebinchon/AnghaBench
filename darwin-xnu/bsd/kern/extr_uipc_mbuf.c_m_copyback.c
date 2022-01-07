
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;


 int M_COPYBACK0_COPYBACK ;
 int M_COPYBACK0_EXTEND ;
 int M_DONTWAIT ;
 int m_copyback0 (struct mbuf**,int,int,void const*,int,int ) ;
 int panic (char*) ;

void
m_copyback(struct mbuf *m0, int off, int len, const void *cp)
{





 if (m0 == ((void*)0))
  return;




 m_copyback0(&m0, off, len, cp,
     M_COPYBACK0_COPYBACK | M_COPYBACK0_EXTEND, M_DONTWAIT);





}
