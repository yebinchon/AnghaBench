
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbuf_t ;


 int m_free (int ) ;

mbuf_t
mbuf_free(mbuf_t mbuf)
{
 return (m_free(mbuf));
}
