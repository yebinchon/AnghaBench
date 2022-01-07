
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbuf_t ;


 int m_freem_list (int ) ;

int
mbuf_freem_list(mbuf_t mbuf)
{
 return (m_freem_list(mbuf));
}
