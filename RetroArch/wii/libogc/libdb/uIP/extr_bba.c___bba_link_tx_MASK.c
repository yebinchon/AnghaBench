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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct uip_pbuf {scalar_t__ tot_len; scalar_t__ len; int /*<<< orphan*/ * payload; struct uip_pbuf* next; } ;
struct uip_netif {int dummy; } ;
typedef  int /*<<< orphan*/  s8_t ;

/* Variables and functions */
 scalar_t__ BBA_MINPKTSIZE ; 
 int /*<<< orphan*/  BBA_NCRA ; 
 int BBA_NCRA_ST0 ; 
 int BBA_NCRA_ST1 ; 
 int /*<<< orphan*/  BBA_TXFIFOCNT ; 
 scalar_t__ BBA_TX_MAX_PACKET_SIZE ; 
 int /*<<< orphan*/  BBA_WRTXFIFOD ; 
 int /*<<< orphan*/  EXI_CHANNEL_0 ; 
 int /*<<< orphan*/  EXI_DEVICE_2 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UIP_ERR_ABRT ; 
 int /*<<< orphan*/  UIP_ERR_IF ; 
 int /*<<< orphan*/  UIP_ERR_OK ; 
 int /*<<< orphan*/  UIP_ERR_PKTSIZE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static s8_t FUNC11(struct uip_netif *dev,struct uip_pbuf *p)
{
	u8 pad[60];
	u32 len;
	struct uip_pbuf *tmp;

	if(FUNC0(EXI_CHANNEL_0,EXI_DEVICE_2,NULL)==0) return UIP_ERR_IF;

	if(p->tot_len>BBA_TX_MAX_PACKET_SIZE) {
		FUNC2("__bba_link_tx: packet dropped due to big buffer.\n");
		FUNC1(EXI_CHANNEL_0);
		return UIP_ERR_PKTSIZE;
	}

	if(!FUNC3()) {
		FUNC1(EXI_CHANNEL_0);
		return UIP_ERR_ABRT;
	}

	while((FUNC5(BBA_NCRA)&(BBA_NCRA_ST0|BBA_NCRA_ST1)));

	len = p->tot_len;
	FUNC6(BBA_TXFIFOCNT,len);

	FUNC10();
	FUNC9(BBA_WRTXFIFOD);
	for(tmp=p;tmp!=NULL;tmp=tmp->next) {
		FUNC8(tmp->payload,tmp->len);
	}
	if(len<BBA_MINPKTSIZE) {
		len = (BBA_MINPKTSIZE-len);
		FUNC8(pad,len);
	}
	FUNC4();

	FUNC7(BBA_NCRA,((FUNC5(BBA_NCRA)&~BBA_NCRA_ST0)|BBA_NCRA_ST1));		//&~BBA_NCRA_ST0
	FUNC1(EXI_CHANNEL_0);
	return UIP_ERR_OK;
}