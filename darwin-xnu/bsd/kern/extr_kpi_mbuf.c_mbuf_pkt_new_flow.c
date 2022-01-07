
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int32_t ;
typedef TYPE_2__* mbuf_t ;
typedef int errno_t ;
struct TYPE_4__ {int pkt_flags; } ;
struct TYPE_5__ {int m_flags; TYPE_1__ m_pkthdr; } ;


 int EINVAL ;
 int M_PKTHDR ;
 int PKTF_NEW_FLOW ;

errno_t
mbuf_pkt_new_flow(const mbuf_t m, u_int32_t *retval)
{
 if (m == ((void*)0) || retval == ((void*)0) || !(m->m_flags & M_PKTHDR))
  return (EINVAL);
 if (m->m_pkthdr.pkt_flags & PKTF_NEW_FLOW)
  *retval = 1;
 else
  *retval = 0;
 return (0);
}
