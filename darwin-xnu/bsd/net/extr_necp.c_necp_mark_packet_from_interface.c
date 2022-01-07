
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int necp_last_interface_index; } ;
struct TYPE_6__ {TYPE_1__ necp_mtag; } ;
struct mbuf {int m_flags; TYPE_2__ m_pkthdr; } ;
typedef TYPE_3__* ifnet_t ;
struct TYPE_7__ {int if_index; } ;


 int EINVAL ;
 int M_PKTHDR ;

int
necp_mark_packet_from_interface(struct mbuf *packet, ifnet_t interface)
{
 if (packet == ((void*)0) || !(packet->m_flags & M_PKTHDR)) {
  return (EINVAL);
 }


 if (interface != ((void*)0)) {
  packet->m_pkthdr.necp_mtag.necp_last_interface_index = interface->if_index;
 }

 return (0);
}
