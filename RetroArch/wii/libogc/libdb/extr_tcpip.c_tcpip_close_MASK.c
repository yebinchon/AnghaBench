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
struct tcpip_sock {int /*<<< orphan*/ * pcb; } ;
typedef  int /*<<< orphan*/  s32_t ;

/* Variables and functions */
 struct tcpip_sock* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(s32_t s)
{
	struct tcpip_sock *sock;

	sock = FUNC0(s);
	if(sock==NULL) return;

	FUNC1(sock->pcb);
	sock->pcb = NULL;
}