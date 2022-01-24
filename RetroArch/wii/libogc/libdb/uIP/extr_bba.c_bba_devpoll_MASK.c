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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
typedef  void* s64 ;
typedef  int /*<<< orphan*/  response ;
typedef  int /*<<< orphan*/  challange ;
struct TYPE_2__ {int acstart; } ;

/* Variables and functions */
 int BBA_CMD_IRMASKALL ; 
 int BBA_CMD_IRMASKNONE ; 
 int /*<<< orphan*/  EXI_CHANNEL_0 ; 
 int /*<<< orphan*/  EXI_DEVICE_2 ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ UIP_ARP_TMRINTERVAL ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 void* bba_arp_tmr ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ *,int) ; 
 TYPE_1__ bba_device ; 
 int /*<<< orphan*/  FUNC9 (int*) ; 
 int /*<<< orphan*/  bba_netif ; 
 scalar_t__ FUNC10 (void*,void*) ; 
 void* FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 

__attribute__((used)) static void FUNC13(u16 *pstatus)
{
	u8 status;
	s64 now;

	FUNC2("bba_devpoll()\n");

	now = FUNC11();
	if(FUNC10(bba_arp_tmr,now)>=UIP_ARP_TMRINTERVAL) {
		FUNC12();
		bba_arp_tmr = FUNC11();
	}

	status = 0;
	*pstatus = 0;
	if(FUNC0(EXI_CHANNEL_0,EXI_DEVICE_2,NULL)==1) {
		status = FUNC5(0x03);
		if(status) {
			FUNC7(0x02,BBA_CMD_IRMASKALL);
			if(status&0x80) {
				*pstatus |= (status<<8);
				FUNC9(pstatus);
				FUNC7(0x03,0x80);
				FUNC7(0x02,BBA_CMD_IRMASKNONE);
				FUNC1(EXI_CHANNEL_0);
				return;
			}
			if(status&0x40) {
				*pstatus |= (status<<8);
				FUNC3(bba_netif);
				FUNC7(0x03, 0x40);
				FUNC7(0x02,BBA_CMD_IRMASKNONE);
				FUNC1(EXI_CHANNEL_0);
				return;
			}
			if(status&0x20) {
				*pstatus |= (status<<8);
				FUNC7(0x03, 0x20);
				FUNC7(0x02,BBA_CMD_IRMASKNONE);
				FUNC1(EXI_CHANNEL_0);
				return;
			}
			if(status&0x10) {
				u32 response,challange;

				*pstatus |= (status<<8);
				FUNC7(0x05,bba_device.acstart);
				FUNC6(0x08,&challange,sizeof(challange));
				response = FUNC4(bba_netif,challange);
				FUNC8(0x09,&response,sizeof(response));
				FUNC7(0x03, 0x10);
				FUNC7(0x02,BBA_CMD_IRMASKNONE);
				FUNC1(EXI_CHANNEL_0);
				return;
			}
			if(status&0x08) {
				*pstatus |= (status<<8);
				FUNC7(0x03, 0x08);
				FUNC7(0x02,BBA_CMD_IRMASKNONE);
				FUNC1(EXI_CHANNEL_0);
				return;
			}

			*pstatus |= (status<<8);
			FUNC9(pstatus);
			FUNC7(0x02,BBA_CMD_IRMASKNONE);
		}
		FUNC1(EXI_CHANNEL_0);
	}
}