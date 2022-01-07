
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * mbuf_t ;


 int m_cat (int *,int *) ;

mbuf_t
mbuf_concatenate(mbuf_t dst, mbuf_t src)
{
 if (dst == ((void*)0))
  return (((void*)0));

 m_cat(dst, src);


 return (dst);
}
