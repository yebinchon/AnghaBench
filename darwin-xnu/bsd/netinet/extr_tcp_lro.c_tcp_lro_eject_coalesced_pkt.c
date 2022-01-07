
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mbuf {int dummy; } ;
struct TYPE_2__ {int * lr_tcphdr; int * lr_mtail; struct mbuf* lr_mhead; } ;


 TYPE_1__* lro_flow_list ;

__attribute__((used)) static struct mbuf*
tcp_lro_eject_coalesced_pkt(int flow_id)
{
 struct mbuf *mb = ((void*)0);
 mb = lro_flow_list[flow_id].lr_mhead;
 lro_flow_list[flow_id].lr_mhead =
  lro_flow_list[flow_id].lr_mtail = ((void*)0);
 lro_flow_list[flow_id].lr_tcphdr = ((void*)0);
 return mb;
}
