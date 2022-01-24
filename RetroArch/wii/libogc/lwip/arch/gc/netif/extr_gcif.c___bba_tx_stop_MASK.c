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
typedef  int /*<<< orphan*/  u32 ;
struct bba_priv {scalar_t__ state; int /*<<< orphan*/  tq_xmit; } ;

/* Variables and functions */
 scalar_t__ ERR_TXPENDING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NETIF_DEBUG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static __inline__ void FUNC4(struct bba_priv *priv)
{
	u32 level;

	FUNC2(level);
	while(priv->state==ERR_TXPENDING) {
		FUNC0(NETIF_DEBUG,("__bba_tx_stop(pending tx)\n"));
		FUNC1(priv->tq_xmit);
	}
	priv->state = ERR_TXPENDING;
	FUNC3(level);
}