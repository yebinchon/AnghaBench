
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8_t ;
typedef int u16_t ;
struct uip_pbuf {int tot_len; struct uip_ip_hdr* payload; } ;
struct uip_netif {int dummy; } ;
struct TYPE_4__ {int addr; } ;
struct TYPE_5__ {int addr; } ;
struct uip_ip_hdr {TYPE_1__ src; int chksum; TYPE_2__ dst; } ;
struct uip_ip_addr {int addr; } ;
struct uip_icmp_echo_hdr {TYPE_1__ src; int chksum; TYPE_2__ dst; } ;
typedef int s16_t ;


 int UIP_ICMPH_TYPE_SET (struct uip_ip_hdr*,int ) ;

 int UIP_ICMP_ER ;
 int UIP_IPH_HL (struct uip_ip_hdr*) ;
 int UIP_IPH_TTL (struct uip_ip_hdr*) ;
 int UIP_LOG (char*) ;
 int UIP_PROTO_ICMP ;
 int htons (int const) ;
 int ip_addr_isbroadcast (TYPE_2__*,struct uip_netif*) ;
 int ip_addr_ismulticast (TYPE_2__*) ;
 int uip_ipchksum_pbuf (struct uip_pbuf*) ;
 int uip_ipoutput_if (struct uip_pbuf*,TYPE_1__*,int *,int ,int ,int ,struct uip_netif*) ;
 int uip_pbuf_free (struct uip_pbuf*) ;
 scalar_t__ uip_pbuf_header (struct uip_pbuf*,int) ;

void uip_icmpinput(struct uip_pbuf *p,struct uip_netif *inp)
{
 u8_t type;
 u16_t hlen;
 struct uip_ip_addr tmpaddr;
 struct uip_ip_hdr *iphdr;
 struct uip_icmp_echo_hdr *iecho;

 iphdr = p->payload;
 hlen = UIP_IPH_HL(iphdr)*4;
 if(uip_pbuf_header(p,-((s16_t)hlen)) || p->tot_len<sizeof(u16_t)*2) {
  UIP_LOG("uip_icmpinput: short ICMP received.\n");
  uip_pbuf_free(p);
  return;
 }

 type = *((u8_t*)p->payload);

 switch(type) {
  case 128:
   if(ip_addr_isbroadcast(&iphdr->dst,inp) || ip_addr_ismulticast(&iphdr->dst)) {
    UIP_LOG("uip_icmpinput: Not echoing to broadcast pings.\n");
    uip_pbuf_free(p);
    return;
   }

   if(p->tot_len<sizeof(struct uip_icmp_echo_hdr)) {
    UIP_LOG("uip_icmpinput: bad ICMP echo received.\n");
    uip_pbuf_free(p);
    return;
   }

   iecho = p->payload;
   if(uip_ipchksum_pbuf(p)!=0) {
    UIP_LOG("uip_icmpinput: checksum failed for received ICMP echo.\n");
    uip_pbuf_free(p);
    return;
   }

   tmpaddr.addr = iphdr->src.addr;
   iphdr->src.addr = iphdr->dst.addr;
   iphdr->dst.addr = tmpaddr.addr;
   UIP_ICMPH_TYPE_SET(iecho,UIP_ICMP_ER);

   if(iecho->chksum>=htons(0xffff-(128<<8))) iecho->chksum += htons(128<<8)+1;
   else iecho->chksum += htons(128<<8);

   uip_pbuf_header(p,hlen);
   uip_ipoutput_if(p,&iphdr->src,((void*)0),UIP_IPH_TTL(iphdr),0,UIP_PROTO_ICMP,inp);
   break;
  default:
   UIP_LOG("uip_icmpinput: ICMP type/code not supported.\n");
   break;
 }
 uip_pbuf_free(p);
}
