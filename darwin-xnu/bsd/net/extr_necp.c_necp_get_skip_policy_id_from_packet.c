
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int necp_skip_policy_id; } ;
struct TYPE_4__ {TYPE_1__ necp_mtag; } ;
struct mbuf {int m_flags; TYPE_2__ m_pkthdr; } ;
typedef int necp_kernel_policy_id ;


 int M_PKTHDR ;
 int NECP_KERNEL_POLICY_ID_NONE ;

necp_kernel_policy_id
necp_get_skip_policy_id_from_packet(struct mbuf *packet)
{
 if (packet == ((void*)0) || !(packet->m_flags & M_PKTHDR)) {
  return (NECP_KERNEL_POLICY_ID_NONE);
 }

 return (packet->m_pkthdr.necp_mtag.necp_skip_policy_id);
}
