
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * mbuf_t ;
typedef int mbuf_how_t ;
typedef int errno_t ;


 int ENOMEM ;
 int * m_dup (int * const,int ) ;

errno_t
mbuf_dup(const mbuf_t src, mbuf_how_t how, mbuf_t *new_mbuf)
{

 *new_mbuf = m_dup(src, how);

 return (*new_mbuf == ((void*)0) ? ENOMEM : 0);
}
