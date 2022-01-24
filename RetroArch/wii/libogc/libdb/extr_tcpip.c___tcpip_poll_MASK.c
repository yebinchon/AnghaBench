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
typedef  scalar_t__ u32 ;
typedef  void* s64 ;

/* Variables and functions */
 scalar_t__ UIP_TCP_TMR_INTERVAL ; 
 scalar_t__ FUNC0 (void*,void*) ; 
 void* FUNC1 () ; 
 void* tcpip_time ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * uip_netif_default ; 
 scalar_t__ uip_tcp_active_pcbs ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ uip_tcp_tw_pcbs ; 

__attribute__((used)) static void FUNC4()
{
	u32 diff;
	s64 now;

	if(uip_netif_default==NULL) return;

	FUNC2(uip_netif_default);

	if(tcpip_time && (uip_tcp_active_pcbs || uip_tcp_tw_pcbs)) {
		now = FUNC1();
		diff = FUNC0(tcpip_time,now);
		if(diff>=UIP_TCP_TMR_INTERVAL) {
			FUNC3();
			tcpip_time = FUNC1();
		}
	} else
		tcpip_time = 0;
}