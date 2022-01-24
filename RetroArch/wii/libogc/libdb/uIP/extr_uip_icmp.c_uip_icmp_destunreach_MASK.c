#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u8_t ;
struct uip_pbuf {int /*<<< orphan*/  len; struct uip_ip_hdr* payload; } ;
struct uip_ip_hdr {int /*<<< orphan*/  src; scalar_t__ chksum; } ;
struct uip_icmp_dur_hdr {int /*<<< orphan*/  src; scalar_t__ chksum; } ;
typedef  enum uip_icmp_dur_type { ____Placeholder_uip_icmp_dur_type } uip_icmp_dur_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct uip_ip_hdr*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct uip_ip_hdr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UIP_ICMP_DUR ; 
 int /*<<< orphan*/  UIP_ICMP_TTL ; 
 scalar_t__ UIP_IP_HLEN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct uip_ip_hdr*,scalar_t__) ; 
 int /*<<< orphan*/  UIP_PBUF_IP ; 
 int /*<<< orphan*/  UIP_PBUF_RAM ; 
 int /*<<< orphan*/  UIP_PROTO_ICMP ; 
 scalar_t__ FUNC3 (struct uip_ip_hdr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct uip_pbuf*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct uip_pbuf* FUNC5 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct uip_pbuf*) ; 

void FUNC7(struct uip_pbuf *p,enum uip_icmp_dur_type t)
{
	struct uip_pbuf *q;
	struct uip_ip_hdr *iphdr;
	struct uip_icmp_dur_hdr *idur;

	q = FUNC5(UIP_PBUF_IP,sizeof(struct uip_icmp_dur_hdr)+UIP_IP_HLEN+8,UIP_PBUF_RAM);

	iphdr = p->payload;
	idur = q->payload;

	FUNC1(idur,UIP_ICMP_DUR);
	FUNC0(idur,t);

	FUNC2((u8_t*)q->payload+sizeof(struct uip_icmp_dur_hdr),p->payload,UIP_IP_HLEN+8);

	idur->chksum = 0;
	idur->chksum = FUNC3(idur,q->len);

	FUNC4(q,NULL,&iphdr->src,UIP_ICMP_TTL,0,UIP_PROTO_ICMP);
	FUNC6(q);
}