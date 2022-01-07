
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbuf_t ;


 int m_freem (int ) ;

void
mbuf_freem(mbuf_t mbuf)
{
 m_freem(mbuf);
}
