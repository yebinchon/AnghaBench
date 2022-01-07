
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* mbuf_t ;
struct TYPE_5__ {size_t ext_size; } ;
struct TYPE_6__ {int m_flags; char* m_dat; TYPE_1__ m_ext; } ;


 size_t MLEN ;
 int M_EXT ;
 scalar_t__ mbuf_datastart (TYPE_2__* const) ;

size_t
mbuf_maxlen(const mbuf_t mbuf)
{
 if (mbuf->m_flags & M_EXT)
  return (mbuf->m_ext.ext_size);
 return (&mbuf->m_dat[MLEN] - ((char *)mbuf_datastart(mbuf)));
}
