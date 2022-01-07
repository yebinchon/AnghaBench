
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mbuf {int dummy; } ;
struct lro_flow {int dummy; } ;
struct TYPE_3__ {size_t lr_hash_map; struct mbuf* lr_mhead; } ;


 int ASSERT (int) ;
 int TCP_LRO_FLOW_UNINIT ;
 int bzero (TYPE_1__*,int) ;
 TYPE_1__* lro_flow_list ;
 int* lro_flow_map ;

__attribute__((used)) static struct mbuf *
tcp_lro_eject_flow(int flow_id)
{
 struct mbuf *mb = ((void*)0);

 mb = lro_flow_list[flow_id].lr_mhead;
 ASSERT(lro_flow_map[lro_flow_list[flow_id].lr_hash_map] == flow_id);
 lro_flow_map[lro_flow_list[flow_id].lr_hash_map] = TCP_LRO_FLOW_UNINIT;
 bzero(&lro_flow_list[flow_id], sizeof(struct lro_flow));

 return mb;
}
