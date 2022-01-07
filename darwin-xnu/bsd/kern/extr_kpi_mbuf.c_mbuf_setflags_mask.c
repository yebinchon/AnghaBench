
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* mbuf_t ;
typedef int mbuf_flags_t ;
typedef int errno_t ;
struct TYPE_4__ {int m_flags; } ;


 int EINVAL ;
 int M_PKTHDR ;
 int m_reinit (TYPE_1__*,int) ;
 int mbuf_cflags_mask ;
 int mbuf_flags_mask ;

errno_t
mbuf_setflags_mask(mbuf_t mbuf, mbuf_flags_t flags, mbuf_flags_t mask)
{
 errno_t ret = 0;

 if (mask & (~mbuf_flags_mask | mbuf_cflags_mask)) {
  ret = EINVAL;
 } else {
  mbuf_flags_t oflags = mbuf->m_flags;
  mbuf->m_flags = (flags & mask) | (mbuf->m_flags & ~mask);





  if ((oflags ^ mbuf->m_flags) & M_PKTHDR) {
   mbuf->m_flags ^= M_PKTHDR;
   ret = m_reinit(mbuf,
       (mbuf->m_flags & M_PKTHDR) ? 0 : 1);
  }
 }

 return (ret);
}
