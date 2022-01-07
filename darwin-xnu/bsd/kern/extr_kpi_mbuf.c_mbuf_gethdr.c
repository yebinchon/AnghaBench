
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbuf_type_t ;
typedef int * mbuf_t ;
typedef int mbuf_how_t ;
typedef int errno_t ;


 int ENOMEM ;
 int * m_gethdr (int ,int ) ;

errno_t
mbuf_gethdr(mbuf_how_t how, mbuf_type_t type, mbuf_t *mbuf)
{

 *mbuf = m_gethdr(how, type);

 return (*mbuf == ((void*)0) ? ENOMEM : 0);
}
