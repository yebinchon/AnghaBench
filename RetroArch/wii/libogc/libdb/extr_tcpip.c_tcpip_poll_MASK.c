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
typedef  int /*<<< orphan*/  s8_t ;

/* Variables and functions */
 int /*<<< orphan*/  UIP_ERR_OK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 

__attribute__((used)) static s8_t FUNC1(void *arg,struct uip_tcp_pcb *pcb)
{
	FUNC0("tcpip_poll()");
	return UIP_ERR_OK;
}