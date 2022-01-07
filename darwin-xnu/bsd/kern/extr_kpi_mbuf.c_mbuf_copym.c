
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * mbuf_t ;
typedef int mbuf_how_t ;
typedef int errno_t ;


 int ENOMEM ;
 int * m_copym (int * const,size_t,size_t,int ) ;

errno_t
mbuf_copym(const mbuf_t src, size_t offset, size_t len,
    mbuf_how_t how, mbuf_t *new_mbuf)
{

 *new_mbuf = m_copym(src, offset, len, how);

 return (*new_mbuf == ((void*)0) ? ENOMEM : 0);
}
