
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ mbuf_class_t ;


 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 scalar_t__ MC_BIGCL ;
 scalar_t__ MC_CL ;
 int M_WAIT ;
 int VERIFY (int) ;
 int freelist_populate (scalar_t__,scalar_t__,int ) ;
 scalar_t__ m_minlimit (scalar_t__) ;
 scalar_t__ m_total (scalar_t__) ;
 int mbuf_mlock ;

__attribute__((used)) static void
freelist_init(mbuf_class_t class)
{
 LCK_MTX_ASSERT(mbuf_mlock, LCK_MTX_ASSERT_OWNED);

 VERIFY(class == MC_CL || class == MC_BIGCL);
 VERIFY(m_total(class) == 0);
 VERIFY(m_minlimit(class) > 0);

 while (m_total(class) < m_minlimit(class))
  (void) freelist_populate(class, m_minlimit(class), M_WAIT);

 VERIFY(m_total(class) >= m_minlimit(class));
}
