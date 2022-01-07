
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u_int64_t ;
typedef TYPE_2__* mbuf_t ;
typedef int errno_t ;
typedef int boolean_t ;
struct TYPE_4__ {int pkt_flags; scalar_t__ pkt_timestamp; } ;
struct TYPE_5__ {int m_flags; TYPE_1__ m_pkthdr; } ;


 int EINVAL ;
 int FALSE ;
 int M_PKTHDR ;
 int PKTF_TS_VALID ;
 int TRUE ;

errno_t
mbuf_get_timestamp(mbuf_t m, u_int64_t *ts, boolean_t *valid)
{
 if (m == ((void*)0) || !(m->m_flags & M_PKTHDR) || ts == ((void*)0))
  return (EINVAL);

 if ((m->m_pkthdr.pkt_flags & PKTF_TS_VALID) == 0) {
  if (valid != ((void*)0))
   *valid = FALSE;
  *ts = 0;
 } else {
  if (valid != ((void*)0))
   *valid = TRUE;
  *ts = m->m_pkthdr.pkt_timestamp;
 }
 return (0);
}
