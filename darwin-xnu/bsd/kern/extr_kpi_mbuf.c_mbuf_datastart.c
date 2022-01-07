
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* mbuf_t ;
struct TYPE_4__ {void* ext_buf; } ;
struct TYPE_5__ {int m_flags; void* m_pktdat; void* m_dat; TYPE_1__ m_ext; } ;


 int M_EXT ;
 int M_PKTHDR ;

void *
mbuf_datastart(mbuf_t mbuf)
{
 if (mbuf->m_flags & M_EXT)
  return (mbuf->m_ext.ext_buf);
 if (mbuf->m_flags & M_PKTHDR)
  return (mbuf->m_pktdat);
 return (mbuf->m_dat);
}
