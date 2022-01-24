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
struct tcp_pcb {int dummy; } ;
struct TYPE_2__ {struct tcp_pcb* tcp; } ;
struct netconn {TYPE_1__ pcb; } ;

/* Variables and functions */
 int /*<<< orphan*/  err_tcp ; 
 int /*<<< orphan*/  poll_tcp ; 
 int /*<<< orphan*/  recv_tcp ; 
 int /*<<< orphan*/  sent_tcp ; 
 int /*<<< orphan*/  FUNC0 (struct tcp_pcb*,struct netconn*) ; 
 int /*<<< orphan*/  FUNC1 (struct tcp_pcb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tcp_pcb*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct tcp_pcb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tcp_pcb*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct netconn *conn)
{
	struct tcp_pcb *pcb = conn->pcb.tcp;

	FUNC0(pcb,conn);
	FUNC3(pcb,recv_tcp);
	FUNC4(pcb,sent_tcp);
	FUNC2(pcb,poll_tcp,4);
	FUNC1(pcb,err_tcp);
}