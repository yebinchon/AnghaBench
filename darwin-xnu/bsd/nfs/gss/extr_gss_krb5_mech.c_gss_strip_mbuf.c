
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int * mbuf_t ;
typedef int errno_t ;


 int EINVAL ;
 int mbuf_adj (int *,int ) ;

errno_t
gss_strip_mbuf(mbuf_t chain, ssize_t size)
{
 if (chain == ((void*)0))
  return (EINVAL);

 mbuf_adj(chain, size);

 return (0);
}
