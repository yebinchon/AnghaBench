
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_packet {scalar_t__ bpfp_type; int bpfp_mbuf; } ;
typedef int errno_t ;


 scalar_t__ BPF_PACKET_TYPE_MBUF ;
 int EINVAL ;
 int mbuf_copydata (int ,size_t,size_t,void*) ;

__attribute__((used)) static errno_t
bpf_copydata(struct bpf_packet *pkt, size_t off, size_t len, void* out_data)
{
 errno_t err = 0;
 if (pkt->bpfp_type == BPF_PACKET_TYPE_MBUF) {
  err = mbuf_copydata(pkt->bpfp_mbuf, off, len, out_data);
 } else {
  err = EINVAL;
 }

 return (err);
}
