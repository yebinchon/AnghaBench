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
struct socket {int dummy; } ;
struct conninfo_tcp {int /*<<< orphan*/  tcpci_tcp_info; int /*<<< orphan*/  tcpci_peer_pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct socket*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct socket*,int /*<<< orphan*/ *) ; 

void
FUNC3(struct socket *so, struct conninfo_tcp *tcp_ci)
{
	(void) FUNC2(so, &tcp_ci->tcpci_peer_pid);
	FUNC1(FUNC0(so), &tcp_ci->tcpci_tcp_info);
}