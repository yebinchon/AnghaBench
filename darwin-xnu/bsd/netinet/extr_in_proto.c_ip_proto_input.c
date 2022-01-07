
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int protocol_family_t ;
typedef TYPE_1__* mbuf_t ;
struct TYPE_5__ {int * m_nextpkt; } ;


 int ip_input (TYPE_1__*) ;
 int ip_input_process_list (TYPE_1__*) ;

__attribute__((used)) static void
ip_proto_input(protocol_family_t protocol, mbuf_t packet_list)
{
#pragma unused(protocol)

 if (packet_list->m_nextpkt != ((void*)0)) {
  ip_input_process_list(packet_list);
 } else {




  ip_input(packet_list);
 }
}
