
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

__attribute__((used)) static void
m_redzone_init(struct mbuf *m)
{
 VERIFY(m->m_flags & M_PKTHDR);




 m->m_pkthdr.redzone = ((u_int32_t)(uintptr_t)m) ^ mb_redzone_cookie;
}
