
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ tcp_seq ;
struct TYPE_4__ {scalar_t__ s_addr; } ;
struct TYPE_3__ {scalar_t__ s_addr; } ;
struct lro_flow {unsigned short lr_fport; unsigned short lr_lport; scalar_t__ lr_seq; int * lr_tcphdr; TYPE_2__ lr_laddr; TYPE_1__ lr_faddr; } ;
struct in_addr {scalar_t__ s_addr; } ;
typedef scalar_t__ __uint32_t ;


 int LRO_HASH (scalar_t__,scalar_t__,unsigned short,unsigned short,scalar_t__) ;
 scalar_t__ TCP_LRO_FLOW_MAP ;
 int TCP_LRO_FLOW_UNINIT ;
 int lck_mtx_lock_spin (int *) ;
 int lck_mtx_unlock (int *) ;
 struct lro_flow* lro_flow_list ;
 int* lro_flow_map ;
 int tcp_lro_lock ;

void
tcp_update_lro_seq(__uint32_t rcv_nxt, struct in_addr saddr, struct in_addr daddr,
  unsigned short sport, unsigned short dport)
{
 int hash, flow_id;
 struct lro_flow *lf;

 hash = LRO_HASH(daddr.s_addr, saddr.s_addr, dport, sport,
  (TCP_LRO_FLOW_MAP - 1));
 lck_mtx_lock_spin(&tcp_lro_lock);
 flow_id = lro_flow_map[hash];
 if (flow_id == TCP_LRO_FLOW_UNINIT) {
  lck_mtx_unlock(&tcp_lro_lock);
  return;
 }
 lf = &lro_flow_list[flow_id];
 if ((lf->lr_faddr.s_addr == daddr.s_addr) &&
     (lf->lr_laddr.s_addr == saddr.s_addr) &&
     (lf->lr_fport == dport) &&
     (lf->lr_lport == sport) &&
     (lf->lr_tcphdr == ((void*)0))) {
  lf->lr_seq = (tcp_seq)rcv_nxt;
 }
 lck_mtx_unlock(&tcp_lro_lock);
 return;
}
