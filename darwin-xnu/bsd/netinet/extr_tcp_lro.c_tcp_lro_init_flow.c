
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int32_t ;
struct tcphdr {int th_seq; int th_dport; int th_sport; } ;
struct TYPE_7__ {int s_addr; } ;
struct TYPE_5__ {int s_addr; } ;
struct lro_flow {int lr_hash_map; scalar_t__ lr_flags; scalar_t__ lr_seq; int lr_timestamp; int lr_lport; int lr_fport; TYPE_3__ lr_laddr; TYPE_1__ lr_faddr; } ;
struct TYPE_8__ {int s_addr; } ;
struct TYPE_6__ {int s_addr; } ;
struct ip {TYPE_4__ ip_dst; TYPE_2__ ip_src; } ;


 struct lro_flow* lro_flow_list ;
 int* lro_flow_map ;
 scalar_t__ ntohl (int ) ;

__attribute__((used)) static void
tcp_lro_init_flow(int flow_id, struct ip* ip_hdr, struct tcphdr *tcp_hdr,
   int hash, u_int32_t timestamp, int payload_len)
{
 struct lro_flow *flow = ((void*)0);

 flow = &lro_flow_list[flow_id];

 flow->lr_hash_map = hash;
 flow->lr_faddr.s_addr = ip_hdr->ip_src.s_addr;
 flow->lr_laddr.s_addr = ip_hdr->ip_dst.s_addr;
 flow->lr_fport = tcp_hdr->th_sport;
 flow->lr_lport = tcp_hdr->th_dport;
 lro_flow_map[hash] = flow_id;
 flow->lr_timestamp = timestamp;
 flow->lr_seq = ntohl(tcp_hdr->th_seq) + payload_len;
 flow->lr_flags = 0;
 return;
}
