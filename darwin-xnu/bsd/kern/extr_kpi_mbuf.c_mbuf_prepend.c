
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * mbuf_t ;
typedef int mbuf_how_t ;
typedef int errno_t ;


 int ENOMEM ;
 int * m_prepend_2 (int *,size_t,int ,int ) ;

errno_t
mbuf_prepend(mbuf_t *orig, size_t len, mbuf_how_t how)
{

 *orig = m_prepend_2(*orig, len, how, 0);

 return (*orig == ((void*)0) ? ENOMEM : 0);
}
