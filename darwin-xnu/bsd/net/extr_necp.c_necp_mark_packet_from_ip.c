
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ necp_policy_id; } ;
struct TYPE_4__ {TYPE_1__ necp_mtag; } ;
struct mbuf {int m_flags; TYPE_2__ m_pkthdr; } ;
typedef scalar_t__ necp_kernel_policy_id ;


 int EINVAL ;
 int M_PKTHDR ;
 scalar_t__ NECP_KERNEL_POLICY_ID_NONE ;

int
necp_mark_packet_from_ip(struct mbuf *packet, necp_kernel_policy_id policy_id)
{
 if (packet == ((void*)0) || !(packet->m_flags & M_PKTHDR)) {
  return (EINVAL);
 }


 if (policy_id != NECP_KERNEL_POLICY_ID_NONE) {
  packet->m_pkthdr.necp_mtag.necp_policy_id = policy_id;
 } else {
  packet->m_pkthdr.necp_mtag.necp_policy_id = NECP_KERNEL_POLICY_ID_NONE;
 }

 return (0);
}
