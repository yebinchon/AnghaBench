
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32_t ;
typedef int u16_t ;
struct uip_tcp_hdr {scalar_t__ chksum; scalar_t__ urgp; void* wnd; void* ackno; void* seqno; void* dst; void* src; } ;
struct uip_pbuf {int tot_len; struct uip_tcp_hdr* payload; } ;
struct uip_ip_addr {int dummy; } ;


 int UIP_LOG (char*) ;
 int UIP_PBUF_IP ;
 int UIP_PBUF_RAM ;
 int UIP_PROTO_TCP ;
 int UIP_TCPH_FLAGS_SET (struct uip_tcp_hdr*,int) ;
 int UIP_TCPH_HDRLEN_SET (struct uip_tcp_hdr*,int) ;
 int UIP_TCP_ACK ;
 int UIP_TCP_HLEN ;
 int UIP_TCP_RST ;
 int UIP_TCP_TTL ;
 int UIP_TCP_WND ;
 void* htonl (int ) ;
 void* htons (int ) ;
 scalar_t__ uip_chksum_pseudo (struct uip_pbuf*,struct uip_ip_addr*,struct uip_ip_addr*,int ,int ) ;
 int uip_ipoutput (struct uip_pbuf*,struct uip_ip_addr*,struct uip_ip_addr*,int ,int ,int ) ;
 struct uip_pbuf* uip_pbuf_alloc (int ,int ,int ) ;
 int uip_pbuf_free (struct uip_pbuf*) ;

void uip_tcp_rst(u32_t seqno,u32_t ackno,struct uip_ip_addr *lipaddr,struct uip_ip_addr *ripaddr,u16_t lport,u16_t rport)
{
 struct uip_pbuf *p;
 struct uip_tcp_hdr *tcphdr;

 p = uip_pbuf_alloc(UIP_PBUF_IP,UIP_TCP_HLEN,UIP_PBUF_RAM);
 if(p==((void*)0)) {
  UIP_LOG("uip_tcp_rst: could not allocate memory for pbuf.\n");
  return;
 }

 tcphdr = p->payload;
 tcphdr->src = htons(lport);
 tcphdr->dst = htons(rport);
 tcphdr->seqno = htonl(seqno);
 tcphdr->ackno = htonl(ackno);
 UIP_TCPH_FLAGS_SET(tcphdr,UIP_TCP_RST|UIP_TCP_ACK);
 tcphdr->wnd = htons(UIP_TCP_WND);
 tcphdr->urgp = 0;
 UIP_TCPH_HDRLEN_SET(tcphdr,5);

 tcphdr->chksum = 0;
 tcphdr->chksum = uip_chksum_pseudo(p,lipaddr,ripaddr,UIP_PROTO_TCP,p->tot_len);

 uip_ipoutput(p,lipaddr,ripaddr,UIP_TCP_TTL,0,UIP_PROTO_TCP);
 uip_pbuf_free(p);
}
