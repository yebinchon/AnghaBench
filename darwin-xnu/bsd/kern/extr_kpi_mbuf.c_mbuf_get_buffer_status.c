
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_2__* mbuf_t ;
struct TYPE_8__ {int buf_sndbuf; int buf_interface; } ;
typedef TYPE_3__ mbuf_buffer_status_t ;
typedef int errno_t ;
struct TYPE_6__ {int pkt_flags; int bufstatus_sndbuf; int bufstatus_if; } ;
struct TYPE_7__ {int m_flags; TYPE_1__ m_pkthdr; } ;


 int EINVAL ;
 int M_PKTHDR ;
 int PKTF_VALID_UNSENT_DATA ;

errno_t
mbuf_get_buffer_status(const mbuf_t m, mbuf_buffer_status_t *buf_status)
{
 if (m == ((void*)0) || buf_status == ((void*)0) || !(m->m_flags & M_PKTHDR) ||
     !(m->m_pkthdr.pkt_flags & PKTF_VALID_UNSENT_DATA))
  return (EINVAL);

 buf_status->buf_interface = m->m_pkthdr.bufstatus_if;
 buf_status->buf_sndbuf = m->m_pkthdr.bufstatus_sndbuf;
 return (0);
}
