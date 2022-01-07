
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_3__ {int necp_route_rule_id; } ;
struct TYPE_4__ {TYPE_1__ necp_mtag; } ;
struct mbuf {int m_flags; TYPE_2__ m_pkthdr; } ;


 int M_PKTHDR ;

u_int32_t
necp_get_route_rule_id_from_packet(struct mbuf *packet)
{
 if (packet == ((void*)0) || !(packet->m_flags & M_PKTHDR)) {
  return (0);
 }

 return (packet->m_pkthdr.necp_mtag.necp_route_rule_id);
}
