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
struct uip_netif {scalar_t__ state; } ;
struct bba_priv {TYPE_1__* ethaddr; int /*<<< orphan*/  acstart; int /*<<< orphan*/  devid; int /*<<< orphan*/  revid; } ;
typedef  int /*<<< orphan*/  s8_t ;
struct TYPE_2__ {int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  BBA_CMD_IRMASKNONE ; 
 int BBA_IMR ; 
 int BBA_IMR_FIFOEIM ; 
 int BBA_IR ; 
 int /*<<< orphan*/  BBA_NAFR_PAR0 ; 
 int /*<<< orphan*/  UIP_ERR_IF ; 
 int /*<<< orphan*/  UIP_ERR_OK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 

__attribute__((used)) static s8_t FUNC8(struct uip_netif *dev)
{
	struct bba_priv *priv = (struct bba_priv*)dev->state;
	if(!priv) return UIP_ERR_IF;

	FUNC1();

	priv->revid = FUNC2(0x01);

	FUNC4(0x04,&priv->devid,2);
	FUNC3(0x05,priv->acstart);

	FUNC7(0x5b, (FUNC5(0x5b)&~0x80));
	FUNC7(0x5e, 0x01);
	FUNC7(0x5c, (FUNC5(0x5c)|0x04));

	FUNC0();

	FUNC6(BBA_NAFR_PAR0,priv->ethaddr->addr, 6);

	FUNC7(BBA_IR,0xFF);
	FUNC7(BBA_IMR,0xFF&~BBA_IMR_FIFOEIM);

	FUNC3(0x02,BBA_CMD_IRMASKNONE);

	return UIP_ERR_OK;
}