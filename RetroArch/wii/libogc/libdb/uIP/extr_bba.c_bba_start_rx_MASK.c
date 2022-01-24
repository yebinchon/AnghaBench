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
typedef  scalar_t__ u32 ;
typedef  int u16 ;
struct uip_pbuf {scalar_t__ payload; struct uip_pbuf* next; } ;
struct uip_netif {int dummy; } ;
struct bba_descr {int dummy; } ;
typedef  int /*<<< orphan*/  s8_t ;
typedef  scalar_t__ s32 ;
struct TYPE_2__ {scalar_t__ packet_len; scalar_t__ status; int next_packet_ptr; } ;

/* Variables and functions */
 int BBA_INIT_RHBP ; 
 int BBA_INIT_RRP ; 
 int /*<<< orphan*/  BBA_RRP ; 
 int /*<<< orphan*/  BBA_RWP ; 
 scalar_t__ BBA_RX_MAX_PACKET_SIZE ; 
 scalar_t__ BBA_RX_STATUS_FAE ; 
 scalar_t__ BBA_RX_STATUS_RERR ; 
 int /*<<< orphan*/  EXI_CHANNEL_0 ; 
 int /*<<< orphan*/  EXI_DEVICE_2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UIP_ERR_OK ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  UIP_PBUF_POOL ; 
 int /*<<< orphan*/  UIP_PBUF_RAW ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,void*,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct uip_pbuf*,struct uip_netif*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 TYPE_1__ cur_descr ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__*) ; 
 struct uip_pbuf* FUNC12 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static s8_t FUNC13(struct uip_netif *dev,u32 budget)
{
	s32 size;
	u16 top,pos,rwp,rrp;
	u32 pkt_status,recvd;
	struct uip_pbuf *p,*q;

	FUNC2("bba_start_rx()\n");

	recvd = 0;
	rwp = FUNC4(BBA_RWP);
	rrp = FUNC4(BBA_RRP);
	while(recvd<budget && rrp!=rwp) {
		FUNC5(rrp<<8,(void*)(&cur_descr),sizeof(struct bba_descr));
		FUNC11((u32*)((void*)(&cur_descr)));

		size = cur_descr.packet_len - 4;
		pkt_status = cur_descr.status;
		if(size>(BBA_RX_MAX_PACKET_SIZE+4)) {
			FUNC2("bba_start_rx: packet dropped due to big buffer.\n");
			continue;
		}

		if(pkt_status&(BBA_RX_STATUS_RERR|BBA_RX_STATUS_FAE)) {
			FUNC2("bba_start_rx: packet dropped due to receive errors.\n");
			rwp = FUNC4(BBA_RWP);
			rrp = FUNC4(BBA_RRP);
			continue;
		}

		pos = (rrp<<8)+4;
		top = (BBA_INIT_RHBP+1)<<8;

		p = FUNC12(UIP_PBUF_RAW,size,UIP_PBUF_POOL);
		if(p) {
			for(q=p;q!=NULL;q=q->next) {
				FUNC10();
				FUNC7(pos);
				if((pos+size)<top) {
					FUNC6(q->payload,size);
				} else {
					s32 chunk = top-pos;

					size -= chunk;
					pos = BBA_INIT_RRP<<8;
					FUNC6(q->payload,chunk);
					FUNC3();

					FUNC10();
					FUNC7(pos);
					FUNC6(q->payload+chunk,size);
				}
				FUNC3();
				pos += size;
			}

			FUNC1(EXI_CHANNEL_0);
			FUNC9(p,dev);
			FUNC0(EXI_CHANNEL_0,EXI_DEVICE_2,NULL);
		} else
			break;

		recvd++;

		FUNC8(BBA_RRP,(rrp=cur_descr.next_packet_ptr));
		rwp = FUNC4(BBA_RWP);
	}
	return UIP_ERR_OK;
}