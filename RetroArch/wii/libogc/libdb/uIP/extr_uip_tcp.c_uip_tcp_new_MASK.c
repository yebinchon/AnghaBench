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

/* Variables and functions */
 int /*<<< orphan*/  UIP_TCP_PRIO_NORMAL ; 
 struct uip_tcp_pcb* FUNC0 (int /*<<< orphan*/ ) ; 

struct uip_tcp_pcb* FUNC1()
{
	return FUNC0(UIP_TCP_PRIO_NORMAL);
}