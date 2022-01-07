
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_packet {scalar_t__ bpfp_header_length; int bpfp_type; int bpfp_mbuf; int bpfp_header; } ;



 int bcopy (int ,void*,size_t) ;
 int bpf_mcopy (int ,void*,size_t) ;
 size_t min (size_t,scalar_t__) ;

__attribute__((used)) static void
copy_bpf_packet(struct bpf_packet * pkt, void * dst, size_t len)
{

 if (pkt->bpfp_header_length != 0) {
  size_t count = min(len, pkt->bpfp_header_length);
  bcopy(pkt->bpfp_header, dst, count);
  len -= count;
  dst += count;
 }
 if (len == 0) {

  return;
 }

 switch (pkt->bpfp_type) {
 case 128:
  bpf_mcopy(pkt->bpfp_mbuf, dst, len);
  break;
 default:
  break;
 }
}
