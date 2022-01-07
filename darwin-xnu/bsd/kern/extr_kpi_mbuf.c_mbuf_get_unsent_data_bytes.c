
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u_int32_t ;
typedef TYPE_2__* mbuf_t ;
typedef int errno_t ;
struct TYPE_4__ {int pkt_flags; scalar_t__ bufstatus_sndbuf; scalar_t__ bufstatus_if; } ;
struct TYPE_5__ {int m_flags; TYPE_1__ m_pkthdr; } ;


 int EINVAL ;
 int M_PKTHDR ;
 int PKTF_VALID_UNSENT_DATA ;

errno_t
mbuf_get_unsent_data_bytes(const mbuf_t m, u_int32_t *unsent_data)
{
 if (m == ((void*)0) || unsent_data == ((void*)0) || !(m->m_flags & M_PKTHDR))
  return (EINVAL);

 if (!(m->m_pkthdr.pkt_flags & PKTF_VALID_UNSENT_DATA))
  return (EINVAL);

 *unsent_data = m->m_pkthdr.bufstatus_if +
     m->m_pkthdr.bufstatus_sndbuf;
 return (0);
}
