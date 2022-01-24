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
typedef  int /*<<< orphan*/  u8_t ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct uip_ip_addr {void* addr; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  EX_DSI ; 
 int /*<<< orphan*/  EX_IABR ; 
 int /*<<< orphan*/  EX_PRG ; 
 int /*<<< orphan*/  EX_TRACE ; 
 scalar_t__ GDBSTUB_DEVICE_USB ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/ * current_device ; 
 int /*<<< orphan*/  dbg_exceptionhandler ; 
 int dbg_initialized ; 
 scalar_t__ tcp_gateway ; 
 scalar_t__ tcp_localip ; 
 scalar_t__ tcp_netmask ; 
 int /*<<< orphan*/ * FUNC7 (struct uip_ip_addr*,struct uip_ip_addr*,struct uip_ip_addr*,int /*<<< orphan*/ ) ; 
 void* FUNC8 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC9 (scalar_t__) ; 

void FUNC10(s32 device_type,s32 channel_port)
{
	u32 level;
	struct uip_ip_addr localip,netmask,gateway;

	FUNC0("DEBUG_Init()\n");

	FUNC4();

	FUNC6();

	if(device_type==GDBSTUB_DEVICE_USB) {
		current_device = FUNC9(channel_port);
	} else {
		localip.addr = FUNC8((const u8_t*)tcp_localip);
		netmask.addr = FUNC8((const u8_t*)tcp_netmask);
		gateway.addr = FUNC8((const u8_t*)tcp_gateway);

		current_device = FUNC7(&localip,&netmask,&gateway,(u16)channel_port);
	}

	if(current_device!=NULL) {
		FUNC1(level);
		FUNC3(EX_DSI,dbg_exceptionhandler);
		FUNC3(EX_PRG,dbg_exceptionhandler);
		FUNC3(EX_TRACE,dbg_exceptionhandler);
		FUNC3(EX_IABR,dbg_exceptionhandler);
		FUNC2(level);

		dbg_initialized = 1;

	}
	FUNC5();
}