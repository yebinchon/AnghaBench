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
struct netif {scalar_t__ state; } ;
struct bba_priv {TYPE_1__* ethaddr; int /*<<< orphan*/  acstart; int /*<<< orphan*/  devid; int /*<<< orphan*/  revid; } ;
typedef  int /*<<< orphan*/  err_t ;
struct TYPE_2__ {int /*<<< orphan*/ * addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  BBA_CMD_IRMASKALL ; 
 int /*<<< orphan*/  BBA_CMD_IRMASKNONE ; 
 int BBA_IMR ; 
 int BBA_IMR_FIFOEIM ; 
 int BBA_IR ; 
 int /*<<< orphan*/  BBA_NAFR_PAR0 ; 
 int BBA_NWAYC ; 
 int /*<<< orphan*/  ERR_IF ; 
 int /*<<< orphan*/  ERR_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  NETIF_DEBUG ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static err_t FUNC10(struct netif *dev)
{
	u8 nwayc;
	struct bba_priv *priv = (struct bba_priv*)dev->state;

	if(!priv) return ERR_IF;

	FUNC0(NETIF_DEBUG,("initializing BBA...\n"));
	FUNC4(0x02,BBA_CMD_IRMASKALL);

	FUNC2();

	priv->revid = FUNC3(0x01);

	FUNC5(0x04,&priv->devid,2);
	FUNC4(0x05,priv->acstart);

	/* Assume you are being started by something which has fucked NWAY!
	   So reset to power on defaults for SIACTRL/SIACONN */
	FUNC8(0x58, 0x80);
	FUNC8(0x59, 0x00);
	FUNC8(0x5a, 0x03);
	FUNC8(0x5b, 0x83);
	FUNC8(0x5c, 0x32);
	FUNC8(0x5d, 0xfe);
	FUNC8(0x5e, 0x1f);
	FUNC8(0x5f, 0x1f);
	FUNC9(100);

	FUNC1();

	/* This doesn't set the speed anymore - it simple kicks off NWAY */
	nwayc = FUNC6(BBA_NWAYC)&0xc0;
	FUNC8(BBA_NWAYC,nwayc);
	FUNC9(100);
	nwayc |= 0x04;
	FUNC8(BBA_NWAYC,nwayc);
	FUNC9(100);
	nwayc |= 0x08;
	FUNC8(BBA_NWAYC,nwayc);
	FUNC9(100);

	FUNC7(BBA_NAFR_PAR0,priv->ethaddr->addr, 6);
	FUNC0(NETIF_DEBUG,("MAC ADDRESS %02x:%02x:%02x:%02x:%02x:%02x\n",
		priv->ethaddr->addr[0], priv->ethaddr->addr[1], priv->ethaddr->addr[2],
		priv->ethaddr->addr[3], priv->ethaddr->addr[4], priv->ethaddr->addr[5]));

	FUNC8(BBA_IR,0xFF);
	FUNC8(BBA_IMR,0xFF&~BBA_IMR_FIFOEIM);

	FUNC4(0x02,BBA_CMD_IRMASKNONE);

	return ERR_OK;
}