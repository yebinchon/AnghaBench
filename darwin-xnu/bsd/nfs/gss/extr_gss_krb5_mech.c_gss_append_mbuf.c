
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int * mbuf_t ;
typedef int errno_t ;


 int EINVAL ;
 int MBUF_WAITOK ;
 int mbuf_copyback (int *,size_t,size_t,int *,int ) ;
 scalar_t__ mbuf_len (int *) ;
 int * mbuf_next (int *) ;

errno_t
gss_append_mbuf(mbuf_t chain, uint8_t *bytes, size_t size)
{
 size_t len = 0;
 mbuf_t mb;

 if (chain == ((void*)0))
  return (EINVAL);

 for (mb = chain; mb; mb = mbuf_next(mb))
  len += mbuf_len(mb);

 return (mbuf_copyback(chain, len, size, bytes, MBUF_WAITOK));
}
