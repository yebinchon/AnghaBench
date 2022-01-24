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
typedef  int u8 ;
struct netif {scalar_t__ state; } ;
struct bba_priv {int flag; } ;

/* Variables and functions */
 int /*<<< orphan*/  BBA_IMR ; 
 int BBA_IMR_RBFIM ; 
 int /*<<< orphan*/  BBA_IR ; 
 int BBA_IR_BUSEI ; 
 int BBA_IR_FIFOEI ; 
 int BBA_IR_FRAGI ; 
 int BBA_IR_RBFI ; 
 int BBA_IR_REI ; 
 int BBA_IR_RI ; 
 int BBA_IR_TEI ; 
 int BBA_IR_TI ; 
 int /*<<< orphan*/  BBA_LRPS ; 
 int /*<<< orphan*/  BBA_LTPS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  NETIF_DEBUG ; 
 int /*<<< orphan*/  FUNC1 (int,struct bba_priv*) ; 
 int /*<<< orphan*/  FUNC2 (int,struct bba_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct bba_priv*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct netif*,int) ; 

__attribute__((used)) static inline void FUNC7(struct netif *dev)
{
	u8 ir,imr,status,lrps,ltps;
	struct bba_priv *priv = (struct bba_priv*)dev->state;

	ir = FUNC4(BBA_IR);
	imr = FUNC4(BBA_IMR);
	status = ir&imr;
	while(status) {
		FUNC0(NETIF_DEBUG,("bba_interrupt(%02x)\n",status));
		FUNC5(BBA_IR,status);
		if(status&BBA_IR_RBFI) {
			FUNC5(BBA_IMR,(FUNC4(BBA_IMR)&~BBA_IMR_RBFIM));
			priv->flag |= BBA_IMR_RBFIM;
		}
		if(status&(BBA_IR_RI|BBA_IR_RBFI)) {
			FUNC6(dev,0x20);
		}
		if(status&(BBA_IR_TI|BBA_IR_FIFOEI)) {
			FUNC3(priv);
		}
		if(status&(BBA_IR_RBFI|BBA_IR_REI)) {
			lrps = FUNC4(BBA_LRPS);
			FUNC1(lrps,priv);
		}
		if(status&BBA_IR_TEI) {
			ltps = FUNC4(BBA_LTPS);
			FUNC2(ltps,priv);
			FUNC3(priv);
		}
		if(status&BBA_IR_FRAGI) {
			FUNC0(NETIF_DEBUG,("bba_interrupt(BBA_IR_FRAGI)\n"));
		}
		if(status&BBA_IR_FIFOEI) {
			FUNC0(NETIF_DEBUG,("bba_interrupt(BBA_IR_FIFOEI)\n"));
		}
		if(status&BBA_IR_BUSEI) {
			FUNC0(NETIF_DEBUG,("bba_interrupt(BBA_IR_BUSEI)\n"));
		}

		ir = FUNC4(BBA_IR);
		imr = FUNC4(BBA_IMR);
		status = ir&imr;
	}
	FUNC0(NETIF_DEBUG,("bba_interrupt(exit)\n"));
}