#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u16_t ;
struct uip_ip_addr {int dummy; } ;
struct uip_tcp_pcb {scalar_t__ local_port; struct uip_ip_addr local_ip; struct uip_tcp_pcb* next; } ;
typedef  int /*<<< orphan*/  s8_t ;
struct TYPE_2__ {scalar_t__ pcbs; } ;

/* Variables and functions */
 int /*<<< orphan*/  UIP_ERR_OK ; 
 int /*<<< orphan*/  UIP_ERR_USE ; 
 scalar_t__ FUNC0 (struct uip_ip_addr*,struct uip_ip_addr*) ; 
 scalar_t__ FUNC1 (struct uip_ip_addr*) ; 
 struct uip_tcp_pcb* uip_tcp_active_pcbs ; 
 TYPE_1__ uip_tcp_listen_pcbs ; 
 scalar_t__ FUNC2 () ; 

s8_t FUNC3(struct uip_tcp_pcb *pcb,struct uip_ip_addr *ipaddr,u16_t port)
{
	struct uip_tcp_pcb *cpcb;

	if(port==0) port = FUNC2();

	for(cpcb=(struct uip_tcp_pcb*)uip_tcp_listen_pcbs.pcbs;cpcb!=NULL;cpcb=cpcb->next) {
		if(cpcb->local_port==port) {
			if(FUNC1(&cpcb->local_ip) ||
				FUNC1(ipaddr) ||
				FUNC0(&cpcb->local_ip,ipaddr)) return UIP_ERR_USE;
		}
	}

	for(cpcb=uip_tcp_active_pcbs;cpcb!=NULL;cpcb=cpcb->next) {
		if(cpcb->local_port==port) {
			if(FUNC1(&cpcb->local_ip) ||
				FUNC1(ipaddr) ||
				FUNC0(&cpcb->local_ip,ipaddr)) return UIP_ERR_USE;
		}
	}

	if(!FUNC1(ipaddr)) pcb->local_ip = *ipaddr;
	pcb->local_port = port;

	return UIP_ERR_OK;
}