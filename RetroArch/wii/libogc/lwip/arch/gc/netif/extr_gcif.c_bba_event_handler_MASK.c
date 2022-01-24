#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct bba_priv {int acstart; } ;
typedef  int s32 ;
typedef  int /*<<< orphan*/  response ;
typedef  int /*<<< orphan*/  challange ;
struct TYPE_4__ {scalar_t__ state; } ;

/* Variables and functions */
 int BBA_CMD_IRMASKALL ; 
 int BBA_CMD_IRMASKNONE ; 
 int /*<<< orphan*/  EXI_CHANNEL_0 ; 
 int /*<<< orphan*/  EXI_DEVICE_2 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int (*) (int,int)) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int NETIF_DEBUG ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct bba_priv*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 TYPE_1__* gc_netif ; 

__attribute__((used)) static s32 FUNC11(s32 nChn,s32 nDev)
{
	u8 status;
	struct bba_priv *priv = (struct bba_priv*)gc_netif->state;

	if(FUNC0(EXI_CHANNEL_0,EXI_DEVICE_2,bba_event_handler)==0) {
		FUNC2(NETIF_DEBUG|1,("bba_event_handler(exi locked)\n"));
		return 1;
	}

	status = FUNC6(0x03);
	FUNC8(0x02,BBA_CMD_IRMASKALL);

	FUNC2(NETIF_DEBUG,("bba_event_handler(status(%02x))\n",status));

	if(status&0x80) {
		FUNC2(NETIF_DEBUG,("bba_event_handler(bba_interrupt(%02x))\n",status));
		FUNC10(gc_netif);
		FUNC8(0x03,0x80);
		FUNC8(0x02,BBA_CMD_IRMASKNONE);
		FUNC1(EXI_CHANNEL_0);
		return 1;
	}
	if(status&0x40) {
		FUNC3(("bba_event_handler(bba_reset(%02x))\n",status));
		FUNC4(gc_netif);
		FUNC8(0x03, 0x40);
		FUNC8(0x02, BBA_CMD_IRMASKNONE);
		FUNC1(EXI_CHANNEL_0);
		return 1;
	}
	if(status&0x20) {
		FUNC2(NETIF_DEBUG,("bba_event_handler(unknown(%02x))\n",status));
		FUNC8(0x03, 0x20);
		FUNC8(0x02, BBA_CMD_IRMASKNONE);
		FUNC1(EXI_CHANNEL_0);
		return 1;
	}
	if(status&0x10) {
		u32 response,challange;
		FUNC2(NETIF_DEBUG,("bba_event_handler(challange/response(%02x))\n",status));
		FUNC8(0x05,priv->acstart);
		FUNC7(0x08,&challange,sizeof(challange));
		response = FUNC5(priv,challange);
		FUNC9(0x09,&response,sizeof(response));

		FUNC8(0x03, 0x10);
		FUNC8(0x02, BBA_CMD_IRMASKNONE);
		FUNC1(EXI_CHANNEL_0);
		return 1;
	}
	if(status&0x08) {
		FUNC2(NETIF_DEBUG,("bba_event_handler(challange/response status(%02x))\n",FUNC6(0x0b)));
		FUNC8(0x03, 0x08);
		FUNC8(0x02, BBA_CMD_IRMASKNONE);
		FUNC1(EXI_CHANNEL_0);
		return 1;
	}
	FUNC3(("GCIF - EXI - ?? %02x\n", status));
	FUNC10(gc_netif);
	FUNC8(0x02,BBA_CMD_IRMASKNONE);
	FUNC1(EXI_CHANNEL_0);
	return 1;
}