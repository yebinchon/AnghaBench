
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_9__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct nat464_addr {int dummy; } ;
struct in_addr {int dummy; } ;
struct ip {int ip_hl; int ip_id; int ip_ttl; int ip_p; int ip_tos; int ip_off; int ip_len; struct in_addr ip_dst; struct in_addr ip_src; } ;
struct in6_addr {int dummy; } ;
struct TYPE_10__ {struct in6_addr sin6_addr; } ;
struct in6_ifaddr {int ia_ifa; TYPE_1__ ia_addr; } ;
typedef scalar_t__ protocol_family_t ;
struct TYPE_11__ {int * pb_mbuf; struct ip* pb_data; } ;
typedef TYPE_2__ pbuf_t ;
typedef int * mbuf_t ;
typedef int ifnet_t ;
typedef int errno_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_12__ {int ip6s_clat464_out_success; int ip6s_clat464_out_invalpbuf_drop; int ip6s_clat464_out_46frag_transfail_drop; int ip6s_clat464_out_46proto_transfail_drop; int ip6s_clat464_out_46transfail_drop; int ip6s_clat464_out_v6synthfail_drop; int ip6s_clat464_out_nov6addr_drop; } ;


 scalar_t__ FALSE ;
 int IFA_REMREF (int *) ;
 int IN6_IFF_CLAT46 ;
 int IP_DF ;
 int IP_MF ;
 int IP_OFFMASK ;
 int IP_RF ;
 int IS_INTF_CLAT46 (int ) ;
 scalar_t__ NT_NAT64 ;
 int NT_OUT ;
 scalar_t__ PF_INET ;
 scalar_t__ PF_INET6 ;
 scalar_t__ TRUE ;
 int VERIFY (int) ;
 struct in6_ifaddr* in6ifa_ifpwithflag (int ,int ) ;
 TYPE_9__ ip6stat ;
 int nat464_insert_frag46 (TYPE_2__*,int,int,scalar_t__) ;
 int nat464_synthesize_ipv6 (int ,struct in_addr*,struct in6_addr*) ;
 scalar_t__ nat464_translate_46 (TYPE_2__*,int,int ,int ,int ,struct in6_addr,struct in6_addr,int) ;
 scalar_t__ nat464_translate_proto (TYPE_2__*,struct nat464_addr*,struct nat464_addr*,int ,scalar_t__,scalar_t__,int ,int) ;
 int ntohs (int ) ;
 int pbuf_destroy (TYPE_2__*) ;
 int pbuf_init_mbuf (TYPE_2__*,int *,int ) ;
 scalar_t__ pbuf_is_valid (TYPE_2__*) ;

__attribute__((used)) static errno_t
dlil_clat46(ifnet_t ifp, protocol_family_t *proto_family, mbuf_t *m)
{
 VERIFY(*proto_family == PF_INET);
 VERIFY(IS_INTF_CLAT46(ifp));

 pbuf_t pbuf_store, *pbuf = ((void*)0);
 struct ip *iph = ((void*)0);
 struct in_addr osrc, odst;
 uint8_t proto = 0;
 struct in6_ifaddr *ia6_clat_src = ((void*)0);
 struct in6_addr *src = ((void*)0);
 struct in6_addr dst;
 int error = 0;
 uint32_t off = 0;
 uint64_t tot_len = 0;
 uint16_t ip_id_val = 0;
 uint16_t ip_frag_off = 0;

 boolean_t is_frag = FALSE;
 boolean_t is_first_frag = TRUE;
 boolean_t is_last_frag = TRUE;

 pbuf_init_mbuf(&pbuf_store, *m, ifp);
 pbuf = &pbuf_store;
 iph = pbuf->pb_data;

 osrc = iph->ip_src;
 odst = iph->ip_dst;
 proto = iph->ip_p;
 off = iph->ip_hl << 2;
 ip_id_val = iph->ip_id;
 ip_frag_off = ntohs(iph->ip_off) & IP_OFFMASK;

 tot_len = ntohs(iph->ip_len);







 if (ntohs(iph->ip_off) & ~(IP_DF | IP_RF)) {
  is_frag = TRUE;


  if (ip_frag_off != 0)
   is_first_frag = FALSE;


  if (ntohs(iph->ip_off) & IP_MF)
   is_last_frag = FALSE;
 }





 ia6_clat_src = in6ifa_ifpwithflag(ifp, IN6_IFF_CLAT46);
 if (ia6_clat_src == ((void*)0)) {
  ip6stat.ip6s_clat464_out_nov6addr_drop++;
  error = -1;
  goto cleanup;
 }

 src = &ia6_clat_src->ia_addr.sin6_addr;





 if ((error = nat464_synthesize_ipv6(ifp, &odst, &dst)) != 0) {
  ip6stat.ip6s_clat464_out_v6synthfail_drop++;
  goto cleanup;
 }


 error = (nat464_translate_46(pbuf, off, iph->ip_tos, iph->ip_p,
     iph->ip_ttl, *src, dst, tot_len) == NT_NAT64) ? 0 : -1;

 iph = ((void*)0);

 if (error != 0) {
  ip6stat.ip6s_clat464_out_46transfail_drop++;
  goto cleanup;
 }





 error = (nat464_translate_proto(pbuf, (struct nat464_addr *)&osrc, (struct nat464_addr *)&odst,
     proto, PF_INET, PF_INET6, NT_OUT, !is_first_frag) == NT_NAT64) ? 0 : -1;

 if (error != 0) {
  ip6stat.ip6s_clat464_out_46proto_transfail_drop++;
  goto cleanup;
 }


 if (is_frag) {
  error = nat464_insert_frag46(pbuf, ip_id_val, ip_frag_off, is_last_frag);

  if (error != 0) {
   ip6stat.ip6s_clat464_out_46frag_transfail_drop++;
   goto cleanup;
  }
 }

cleanup:
 if (ia6_clat_src != ((void*)0))
  IFA_REMREF(&ia6_clat_src->ia_ifa);

 if (pbuf_is_valid(pbuf)) {
  *m = pbuf->pb_mbuf;
  pbuf->pb_mbuf = ((void*)0);
  pbuf_destroy(pbuf);
 } else {
  error = -1;
  ip6stat.ip6s_clat464_out_invalpbuf_drop++;
 }

 if (error == 0) {
  *proto_family = PF_INET6;
  ip6stat.ip6s_clat464_out_success++;
 }

 return (error);
}
