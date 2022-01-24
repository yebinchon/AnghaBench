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
struct uip_tcp_pcb {int dummy; } ;
struct tcpip_sock {int dummy; } ;
typedef  int s32_t ;

/* Variables and functions */
 int FUNC0 (struct uip_tcp_pcb*) ; 
 struct tcpip_sock* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct uip_tcp_pcb*,struct tcpip_sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct uip_tcp_pcb*) ; 
 struct uip_tcp_pcb* FUNC4 () ; 

s32_t FUNC5()
{
	s32_t s;
	struct tcpip_sock *sock;
	struct uip_tcp_pcb *pcb;

	pcb = FUNC4();
	if(!pcb) return -1;

	s = FUNC0(pcb);
	if(s<0) {
		FUNC3(pcb);
		return -1;
	}

	sock = FUNC1(s);
	FUNC2(pcb,sock);

	return s;
}