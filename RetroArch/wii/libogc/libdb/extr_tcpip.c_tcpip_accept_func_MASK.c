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
struct uip_tcp_pcb {int dummy; } ;
struct tcpip_sock {struct tcpip_sock* next; TYPE_1__* pcb; } ;
typedef  int /*<<< orphan*/  s8_t ;
typedef  scalar_t__ s32_t ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  UIP_ERR_ABRT ; 
 int /*<<< orphan*/  UIP_ERR_OK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  UIP_TF_NODELAY ; 
 struct tcpip_sock* tcpip_accepted_sockets ; 
 scalar_t__ FUNC1 (struct uip_tcp_pcb*) ; 
 int /*<<< orphan*/  tcpip_err ; 
 struct tcpip_sock* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  tcpip_poll ; 
 int /*<<< orphan*/  tcpip_recved ; 
 int /*<<< orphan*/  tcpip_sent ; 
 int /*<<< orphan*/  FUNC3 (struct uip_tcp_pcb*,struct tcpip_sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct uip_tcp_pcb*) ; 
 int /*<<< orphan*/  FUNC5 (struct uip_tcp_pcb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct uip_tcp_pcb*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct uip_tcp_pcb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct uip_tcp_pcb*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static s8_t FUNC9(void *arg,struct uip_tcp_pcb *newpcb,s8_t err)
{
	s32_t s;
	struct tcpip_sock *ptr,*newsock = NULL;
	struct tcpip_sock *sock = (struct tcpip_sock*)arg;

	FUNC0("tcpip_accept_func()");
	if(!sock) return UIP_ERR_ABRT;

	s = FUNC1(newpcb);
	if(s<0) {
		FUNC4(newpcb);
		return UIP_ERR_ABRT;
	}

	newsock = FUNC2(s);
	newsock->pcb->flags |= UIP_TF_NODELAY;

	ptr = tcpip_accepted_sockets;
	while(ptr && ptr->next) ptr = ptr->next;
	if(!ptr) tcpip_accepted_sockets = newsock;
	else ptr->next = newsock;

	FUNC3(newpcb,newsock);
	FUNC7(newpcb,tcpip_recved);
	FUNC8(newpcb,tcpip_sent);
	FUNC5(newpcb,tcpip_err);
	FUNC6(newpcb,tcpip_poll,4);

	return UIP_ERR_OK;
}