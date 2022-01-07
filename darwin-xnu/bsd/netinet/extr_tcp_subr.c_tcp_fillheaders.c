
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tcphdr {int th_off; scalar_t__ th_urp; scalar_t__ th_win; scalar_t__ th_flags; scalar_t__ th_x2; scalar_t__ th_ack; scalar_t__ th_seq; int th_dport; int th_sport; int th_sum; } ;
struct tcpcb {struct inpcb* t_inpcb; } ;
struct ip6_hdr {int ip6_flow; int ip6_vfc; int ip6_nxt; int ip6_dst; int ip6_src; scalar_t__ ip6_hlim; int ip6_plen; } ;
struct TYPE_4__ {int s_addr; } ;
struct TYPE_3__ {int s_addr; } ;
struct ip {int ip_p; TYPE_2__ ip_dst; TYPE_1__ ip_src; scalar_t__ ip_sum; scalar_t__ ip_ttl; scalar_t__ ip_off; scalar_t__ ip_id; scalar_t__ ip_len; scalar_t__ ip_tos; int ip_vhl; } ;
struct inpcb {int inp_vflag; int inp_flow; int inp_fport; int inp_lport; TYPE_2__ inp_faddr; TYPE_1__ inp_laddr; int in6p_faddr; int in6p_laddr; } ;


 int INP_IPV6 ;
 int IPPROTO_TCP ;
 int IPV6_FLOWINFO_MASK ;
 int IPV6_VERSION ;
 int IPV6_VERSION_MASK ;
 int IP_VHL_BORING ;
 int htonl (int) ;
 int htons (int) ;
 int in6_pseudo (int *,int *,int ) ;
 int in_pseudo (int ,int ,int ) ;

void
tcp_fillheaders(struct tcpcb *tp, void *ip_ptr, void *tcp_ptr)
{
 struct inpcb *inp = tp->t_inpcb;
 struct tcphdr *tcp_hdr = (struct tcphdr *)tcp_ptr;
 {
  struct ip *ip = (struct ip *) ip_ptr;

  ip->ip_vhl = IP_VHL_BORING;
  ip->ip_tos = 0;
  ip->ip_len = 0;
  ip->ip_id = 0;
  ip->ip_off = 0;
  ip->ip_ttl = 0;
  ip->ip_sum = 0;
  ip->ip_p = IPPROTO_TCP;
  ip->ip_src = inp->inp_laddr;
  ip->ip_dst = inp->inp_faddr;
  tcp_hdr->th_sum =
      in_pseudo(ip->ip_src.s_addr, ip->ip_dst.s_addr,
      htons(sizeof(struct tcphdr) + IPPROTO_TCP));
 }

 tcp_hdr->th_sport = inp->inp_lport;
 tcp_hdr->th_dport = inp->inp_fport;
 tcp_hdr->th_seq = 0;
 tcp_hdr->th_ack = 0;
 tcp_hdr->th_x2 = 0;
 tcp_hdr->th_off = 5;
 tcp_hdr->th_flags = 0;
 tcp_hdr->th_win = 0;
 tcp_hdr->th_urp = 0;
}
