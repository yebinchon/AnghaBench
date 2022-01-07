
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * mbuf_t ;
typedef int errno_t ;


 int ENOMEM ;
 int * m_pullup (int *,size_t) ;

errno_t
mbuf_pullup(mbuf_t *mbuf, size_t len)
{

 *mbuf = m_pullup(*mbuf, len);

 return (*mbuf == ((void*)0) ? ENOMEM : 0);
}
