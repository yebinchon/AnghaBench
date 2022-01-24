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
struct tcpip_sock {scalar_t__ pcb; } ;
typedef  int /*<<< orphan*/  s32_t ;

/* Variables and functions */
 struct tcpip_sock* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ tcpip_time ; 
 scalar_t__ uip_tcp_active_pcbs ; 
 scalar_t__ uip_tcp_tw_pcbs ; 

void FUNC1(s32_t s)
{
	struct tcpip_sock *sock;

	sock = FUNC0(s);
	if(!sock) return;

	if(tcpip_time && sock->pcb && (uip_tcp_active_pcbs || uip_tcp_tw_pcbs)) tcpip_time = 0;
}