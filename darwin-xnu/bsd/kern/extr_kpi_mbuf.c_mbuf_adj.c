
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbuf_t ;


 int m_adj (int ,int) ;

void
mbuf_adj(mbuf_t mbuf, int len)
{
 m_adj(mbuf, len);
}
