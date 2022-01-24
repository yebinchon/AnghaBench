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
struct pbuf {scalar_t__ len; scalar_t__ payload; struct pbuf* next; } ;
struct netif {int /*<<< orphan*/  (* input ) (struct pbuf*,struct netif*) ;scalar_t__ state; } ;
struct bba_priv {int flag; } ;
struct bba_descr {int dummy; } ;
typedef  scalar_t__ s32 ;
typedef  int /*<<< orphan*/  err_t ;
struct TYPE_2__ {scalar_t__ packet_len; scalar_t__ status; int next_packet_ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  BBA_IMR ; 
 int BBA_IMR_RBFIM ; 
 int BBA_INIT_RHBP ; 
 int BBA_INIT_RRP ; 
 int BBA_IR_RBFI ; 
 int /*<<< orphan*/  BBA_RRP ; 
 int /*<<< orphan*/  BBA_RWP ; 
 scalar_t__ BBA_RX_MAX_PACKET_SIZE ; 
 scalar_t__ BBA_RX_STATUS_FAE ; 
 scalar_t__ BBA_RX_STATUS_RERR ; 
 int /*<<< orphan*/  ERR_OK ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int NETIF_DEBUG ; 
 int /*<<< orphan*/  PBUF_POOL ; 
 int /*<<< orphan*/  PBUF_RAW ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct bba_priv*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,void*,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 TYPE_1__ cur_descr ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__*) ; 
 struct pbuf* FUNC12 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct pbuf*,struct netif*) ; 

__attribute__((used)) static err_t FUNC14(struct netif *dev,u32 budget)
{
	s32 size;
	u16 top,pos,rrp,rwp;
	u32 pkt_status,recvd;
	struct pbuf *tmp,*p = NULL;
	struct bba_priv *priv = (struct bba_priv*)dev->state;

	FUNC0(NETIF_DEBUG,("bba_start_rx()\n"));

	recvd = 0;
	rwp = FUNC3(BBA_RWP);
	rrp = FUNC3(BBA_RRP);
	while(recvd<budget && rrp!=rwp) {
		FUNC0(NETIF_DEBUG,("bba_start_rx(%04x,%04x)\n",rrp,rwp));
		FUNC5(rrp<<8,(void*)(&cur_descr),sizeof(struct bba_descr));
		FUNC11((u32*)((void*)(&cur_descr)));

		size = (cur_descr.packet_len-4);
		pkt_status = cur_descr.status;
		if(size>(BBA_RX_MAX_PACKET_SIZE+4)) {
			FUNC0(NETIF_DEBUG|2,("bba_start_rx(size>BBA_RX_MAX_PACKET_SIZE)\n"));
			continue;
		}

		if(pkt_status&(BBA_RX_STATUS_RERR|BBA_RX_STATUS_FAE)) {
			FUNC0(NETIF_DEBUG|2,("bba_start_rx(pkt_status = 02x)\n",pkt_status));
			FUNC1(pkt_status,priv);
			rwp = FUNC3(BBA_RWP);
			rrp = FUNC3(BBA_RRP);
			continue;
		}

		pos = ((rrp<<8)+4);
		top = ((BBA_INIT_RHBP+1)<<8);
		FUNC0(NETIF_DEBUG,("bba_start_rx(%04x,%d,%04x)\n",pos,size,top));

		p = FUNC12(PBUF_RAW,size,PBUF_POOL);
		if(p) {
			for(tmp=p;tmp!=NULL;tmp=tmp->next) {
				size = tmp->len;

				FUNC10();
				FUNC7(pos);
				if((pos+size)<top) {
					FUNC6(tmp->payload,size);
				} else {
					s32 chunk_size = (top-pos);

					size -= chunk_size;
					pos = (BBA_INIT_RRP<<8);
					FUNC6(tmp->payload,chunk_size);
					FUNC2();
					FUNC10();
					FUNC7(pos);
					FUNC6(tmp->payload+chunk_size,size);
				}
				FUNC2();
				pos += size;
			}
			dev->input(p,dev);
		} else
			break;

		recvd++;
		FUNC8(BBA_RRP,(rrp=cur_descr.next_packet_ptr));
		rwp = FUNC3(BBA_RWP);
	}
	if(priv->flag&BBA_IR_RBFI) {
		priv->flag &= ~BBA_IR_RBFI;
		FUNC9(BBA_IMR,(FUNC4(BBA_IMR)|BBA_IMR_RBFIM));
	}

	FUNC0(NETIF_DEBUG,("bba_start_rx(rx interrupt close)\n"));
	return ERR_OK;
}