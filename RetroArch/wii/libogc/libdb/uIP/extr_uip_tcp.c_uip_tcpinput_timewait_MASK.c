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
struct uip_tcp_pcb {scalar_t__ rcv_nxt; } ;
typedef  int /*<<< orphan*/  s8_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 scalar_t__ uip_seqno ; 
 int /*<<< orphan*/  FUNC1 (struct uip_tcp_pcb*) ; 
 scalar_t__ uip_tcplen ; 
 int /*<<< orphan*/  FUNC2 (struct uip_tcp_pcb*) ; 

__attribute__((used)) static s8_t FUNC3(struct uip_tcp_pcb *pcb)
{
	if(FUNC0(uip_seqno+uip_tcplen,pcb->rcv_nxt)) pcb->rcv_nxt = uip_seqno+uip_tcplen;
	if(uip_tcplen>0) {
		FUNC1(pcb);
	}

	return FUNC2(pcb);
}