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
struct udp_pcb {void* remote_port; void* recv_arg; struct udp_pcb* recv; struct udp_pcb* local_port; int /*<<< orphan*/  flags; scalar_t__ next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct udp_pcb*) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct udp_pcb*,...) ; 

void FUNC2(struct udp_pcb *pcb)
{
    FUNC1("pcb=%p next=%p", pcb, (void*)pcb->next);
    FUNC0(pcb);
    FUNC1("flags=%x", pcb->flags);
    FUNC1("local_port=%d remote_port=%d", pcb->local_port, pcb->remote_port);
    FUNC1("recv cb=%p recv_arg=%p", pcb->recv, pcb->recv_arg);
}