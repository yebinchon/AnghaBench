
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;
typedef int u_char ;
struct pktap_header {int pth_frame_pre_length; int pth_length; scalar_t__ pth_protocol_family; scalar_t__ pth_iftype; } ;
struct ether_header {int dummy; } ;
struct bpf_packet {int bpfp_header_length; scalar_t__ bpfp_header; } ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int BPF_MIN_PKT_SIZE ;
 scalar_t__ IFT_ETHER ;
 int MIN (int,int) ;
 int get_ether_trunc_len (struct bpf_packet*,int ,int) ;
 int get_ip6_trunc_len (struct bpf_packet*,int,int) ;
 int get_ip_trunc_len (struct bpf_packet*,int,int) ;
 int min (int ,int) ;

__attribute__((used)) static uint32_t
get_pkt_trunc_len(u_char *p, u_int len)
{
 struct bpf_packet *pkt = (struct bpf_packet *)(void *) p;
 struct pktap_header *pktap = (struct pktap_header *) (pkt->bpfp_header);
 uint32_t out_pkt_len = 0, tlen = 0;
 uint32_t pre = pktap->pth_frame_pre_length -
     (pkt->bpfp_header_length - pktap->pth_length);


 uint32_t in_pkt_len = len - pkt->bpfp_header_length - pre;
 if (pktap->pth_protocol_family == AF_INET ||
     pktap->pth_protocol_family == AF_INET6) {

  if (pre > 0) {
   if (pre < sizeof(struct ether_header))
    goto too_short;

   out_pkt_len = get_ether_trunc_len(pkt, 0, in_pkt_len);
  } else if (pre == 0) {
   if (pktap->pth_protocol_family == AF_INET) {
    out_pkt_len = get_ip_trunc_len(pkt, pre, in_pkt_len);
   } else if (pktap->pth_protocol_family == AF_INET6) {
    out_pkt_len = get_ip6_trunc_len(pkt, pre, in_pkt_len);
   }
  } else {

   out_pkt_len = min(BPF_MIN_PKT_SIZE, in_pkt_len);
  }
 } else {
  if (pktap->pth_iftype == IFT_ETHER) {
   if (in_pkt_len < sizeof(struct ether_header)) {
    goto too_short;
   }

   out_pkt_len = MIN(sizeof(struct ether_header) + 16,
       in_pkt_len);
  } else {



   out_pkt_len = MIN(16, in_pkt_len);
  }
 }
done:
 tlen = pkt->bpfp_header_length + out_pkt_len + pre;
 return (tlen);
too_short:
 out_pkt_len = in_pkt_len;
 goto done;
}
