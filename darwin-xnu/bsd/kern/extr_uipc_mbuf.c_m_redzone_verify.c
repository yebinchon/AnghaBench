
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_2__ {int redzone; } ;
struct mbuf {int m_flags; TYPE_1__ m_pkthdr; } ;


 int M_PKTHDR ;
 int VERIFY (int) ;
 int mb_redzone_cookie ;
 int panic (char*,struct mbuf*,int,int,int) ;

__attribute__((used)) static void
m_redzone_verify(struct mbuf *m)
{
 u_int32_t mb_redzone;

 VERIFY(m->m_flags & M_PKTHDR);

 mb_redzone = ((u_int32_t)(uintptr_t)m) ^ mb_redzone_cookie;
 if (m->m_pkthdr.redzone != mb_redzone) {
  panic("mbuf %p redzone violation with value 0x%x "
      "(instead of 0x%x, using cookie 0x%x)\n",
      m, m->m_pkthdr.redzone, mb_redzone, mb_redzone_cookie);

 }
}
