
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int mbuf_t ;
typedef int ifnet_t ;


 int bpf_tap_mbuf (int ,int ,int ,void*,size_t,int ) ;

void
bpf_tap_in(
 ifnet_t ifp,
 u_int32_t dlt,
 mbuf_t m,
 void* hdr,
 size_t hlen)
{
 bpf_tap_mbuf(ifp, dlt, m, hdr, hlen, 0);
}
