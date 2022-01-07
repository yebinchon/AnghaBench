
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u_int64_t ;
typedef TYPE_2__* mbuf_t ;
typedef int errno_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_4__ {scalar_t__ pkt_timestamp; int pkt_flags; } ;
struct TYPE_5__ {int m_flags; TYPE_1__ m_pkthdr; } ;


 int EINVAL ;
 scalar_t__ FALSE ;
 int M_PKTHDR ;
 int PKTF_TS_VALID ;

errno_t
mbuf_set_timestamp(mbuf_t m, u_int64_t ts, boolean_t valid)
{
 if (m == ((void*)0) || !(m->m_flags & M_PKTHDR))
  return (EINVAL);

 if (valid == FALSE) {
  m->m_pkthdr.pkt_flags &= ~PKTF_TS_VALID;
  m->m_pkthdr.pkt_timestamp = 0;
 } else {
  m->m_pkthdr.pkt_flags |= PKTF_TS_VALID;
  m->m_pkthdr.pkt_timestamp = ts;
 }
 return (0);
}
