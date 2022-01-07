
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ mbuf_t ;


 scalar_t__ mbuf_len (scalar_t__) ;
 scalar_t__ mbuf_next (scalar_t__) ;

size_t
gss_mbuf_len(mbuf_t mb, size_t offset)
{
 size_t len;

 for (len = 0; mb; mb = mbuf_next(mb))
  len += mbuf_len(mb);
 return ((offset > len) ? 0 : len - offset);
}
