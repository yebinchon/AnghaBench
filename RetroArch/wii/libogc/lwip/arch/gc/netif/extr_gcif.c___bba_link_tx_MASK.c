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
struct pbuf {scalar_t__ tot_len; int /*<<< orphan*/  len; int /*<<< orphan*/  payload; struct pbuf* next; } ;
struct netif {scalar_t__ state; } ;
struct bba_priv {int dummy; } ;
typedef  int /*<<< orphan*/  err_t ;

/* Variables and functions */
 int BBA_MINPKTSIZE ; 
 int /*<<< orphan*/  BBA_NCRA ; 
 int BBA_NCRA_ST0 ; 
 int BBA_NCRA_ST1 ; 
 int /*<<< orphan*/  BBA_TXFIFOCNT ; 
 scalar_t__ BBA_TX_MAX_PACKET_SIZE ; 
 int /*<<< orphan*/  BBA_WRTXFIFOD ; 
 int /*<<< orphan*/  ERR_ABRT ; 
 int /*<<< orphan*/  ERR_OK ; 
 int /*<<< orphan*/  ERR_PKTSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  NETIF_DEBUG ; 
 int /*<<< orphan*/  FUNC3 (struct bba_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct bba_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct bba_priv*) ; 
 int /*<<< orphan*/  FUNC6 (struct bba_priv*) ; 
 int /*<<< orphan*/  FUNC7 (struct bba_priv*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 () ; 

__attribute__((used)) static err_t FUNC16(struct netif *dev,struct pbuf *p)
{
	u8 tmpbuf[BBA_MINPKTSIZE];
	struct pbuf *tmp;
	struct bba_priv *priv = (struct bba_priv*)dev->state;

	FUNC5(priv);
	FUNC3(priv);

	if(p->tot_len>BBA_TX_MAX_PACKET_SIZE) {
		FUNC1(("__bba_link_tx(%d,%p) pkt_size\n",p->tot_len,FUNC2()));
		FUNC6(priv);
		FUNC4(priv);
		return ERR_PKTSIZE;
	}

	if(!FUNC7(priv)) {
		FUNC1(("__bba_link_tx(error link state)\n"));
		FUNC6(priv);
		FUNC4(priv);
		return ERR_ABRT;
	}

	FUNC0(NETIF_DEBUG,("__bba_link_tx(%d,%p)\n",p->tot_len,FUNC2()));

	FUNC10(BBA_TXFIFOCNT,p->tot_len);

	FUNC15();
	FUNC14(BBA_WRTXFIFOD);
	for(tmp=p;tmp!=NULL;tmp=tmp->next) {
		FUNC13(tmp->payload,tmp->len);
	}
	if(p->tot_len<BBA_MINPKTSIZE) FUNC12(tmpbuf,(BBA_MINPKTSIZE-p->tot_len));
	FUNC8();

	FUNC11(BBA_NCRA,((FUNC9(BBA_NCRA)&~BBA_NCRA_ST0)|BBA_NCRA_ST1));		//&~BBA_NCRA_ST0
	FUNC4(priv);
	return ERR_OK;
}