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
typedef  int /*<<< orphan*/  u32_t ;
struct tcpip_sock {int /*<<< orphan*/ * pcb; } ;
typedef  int s32_t ;

/* Variables and functions */
 int /*<<< orphan*/  tcpip_accept_func ; 
 struct tcpip_sock* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 

s32_t FUNC3(s32_t s,u32_t backlog)
{
	struct tcpip_sock *sock;

	sock = FUNC0(s);
	if(!sock) return -1;

	sock->pcb = FUNC2(sock->pcb);
	if(sock->pcb==NULL) return -1;

	FUNC1(sock->pcb,tcpip_accept_func);

	return 0;
}