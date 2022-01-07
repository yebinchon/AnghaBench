
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8_t ;
struct pbuf {int len; struct ip_hdr* payload; } ;
struct ip_hdr {int src; scalar_t__ chksum; } ;
struct icmp_dur_hdr {int src; scalar_t__ chksum; } ;
typedef enum icmp_dur_type { ____Placeholder_icmp_dur_type } icmp_dur_type ;
struct TYPE_2__ {int xmit; } ;


 int ICMPH_CODE_SET (struct ip_hdr*,int) ;
 int ICMPH_TYPE_SET (struct ip_hdr*,int ) ;
 int ICMP_DUR ;
 int ICMP_STATS_INC (int ) ;
 int ICMP_TTL ;
 scalar_t__ IP_HLEN ;
 int IP_PROTO_ICMP ;
 int PBUF_IP ;
 int PBUF_RAM ;
 TYPE_1__ icmp ;
 scalar_t__ inet_chksum (struct ip_hdr*,int ) ;
 int ip_output (struct pbuf*,int *,int *,int ,int ,int ) ;
 int memcpy (int *,struct ip_hdr*,scalar_t__) ;
 struct pbuf* pbuf_alloc (int ,scalar_t__,int ) ;
 int pbuf_free (struct pbuf*) ;
 int snmp_inc_icmpoutdestunreachs () ;
 int snmp_inc_icmpoutmsgs () ;

void
icmp_dest_unreach(struct pbuf *p, enum icmp_dur_type t)
{
  struct pbuf *q;
  struct ip_hdr *iphdr;
  struct icmp_dur_hdr *idur;

  q = pbuf_alloc(PBUF_IP, 8 + IP_HLEN + 8, PBUF_RAM);


  iphdr = p->payload;

  idur = q->payload;
  ICMPH_TYPE_SET(idur, ICMP_DUR);
  ICMPH_CODE_SET(idur, t);

  memcpy((u8_t *)q->payload + 8, p->payload, IP_HLEN + 8);


  idur->chksum = 0;
  idur->chksum = inet_chksum(idur, q->len);
  ICMP_STATS_INC(icmp.xmit);

  snmp_inc_icmpoutmsgs();

  snmp_inc_icmpoutdestunreachs();

  ip_output(q, ((void*)0), &(iphdr->src),
     ICMP_TTL, 0, IP_PROTO_ICMP);
  pbuf_free(q);
}
