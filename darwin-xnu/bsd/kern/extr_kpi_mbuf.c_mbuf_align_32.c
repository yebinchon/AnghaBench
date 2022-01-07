
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_int32_t ;
typedef TYPE_1__* mbuf_t ;
typedef int errno_t ;
struct TYPE_6__ {int m_flags; size_t m_data; } ;


 int ENOTSUP ;
 int M_EXT ;
 scalar_t__ m_mclhasreference (TYPE_1__*) ;
 size_t mbuf_datastart (TYPE_1__*) ;
 size_t mbuf_trailingspace (TYPE_1__*) ;

errno_t
mbuf_align_32(mbuf_t mbuf, size_t len)
{
 if ((mbuf->m_flags & M_EXT) != 0 && m_mclhasreference(mbuf))
  return (ENOTSUP);
 mbuf->m_data = mbuf_datastart(mbuf);
 mbuf->m_data +=
     ((mbuf_trailingspace(mbuf) - len) &~ (sizeof(u_int32_t) - 1));

 return (0);
}
