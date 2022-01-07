
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * mbuf_t ;
typedef int errno_t ;


 int ENOMEM ;
 int * m_pulldown (int *,size_t,size_t,int*) ;

errno_t
mbuf_pulldown(mbuf_t src, size_t *offset, size_t len, mbuf_t *location)
{

 int new_offset;
 *location = m_pulldown(src, *offset, len, &new_offset);
 *offset = new_offset;

 return (*location == ((void*)0) ? ENOMEM : 0);
}
