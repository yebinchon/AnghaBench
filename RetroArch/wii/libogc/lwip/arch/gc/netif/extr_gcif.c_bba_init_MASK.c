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
struct netif {int /*<<< orphan*/  flags; scalar_t__ state; } ;
struct bba_priv {int dummy; } ;
typedef  scalar_t__ err_t ;

/* Variables and functions */
 scalar_t__ ERR_IF ; 
 scalar_t__ ERR_OK ; 
 int /*<<< orphan*/  EXI_CHANNEL_2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  NETIF_DEBUG ; 
 int /*<<< orphan*/  NETIF_FLAG_LINK_UP ; 
 int /*<<< orphan*/  FUNC2 (struct bba_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct bba_priv*) ; 
 scalar_t__ FUNC4 (struct bba_priv*) ; 
 int /*<<< orphan*/ * bba_event_handler ; 
 scalar_t__ FUNC5 (struct netif*) ; 

err_t FUNC6(struct netif *dev)
{
	err_t ret;
	struct bba_priv *priv = (struct bba_priv*)dev->state;

	FUNC2(priv);

	FUNC1(NETIF_DEBUG, ("bba_init(call EXI_RegisterEXICallback())\n"));
	FUNC0(EXI_CHANNEL_2,bba_event_handler);

	ret = FUNC5(dev);
	if(ret!=ERR_OK) {
		FUNC0(EXI_CHANNEL_2,NULL);
		FUNC3(priv);
		return ret;
	}

	ret = FUNC4(priv);
	if(ret) {
		dev->flags |= NETIF_FLAG_LINK_UP;
		ret = ERR_OK;
	} else {
		FUNC0(EXI_CHANNEL_2,NULL);
		ret = ERR_IF;
	}

	FUNC3(priv);
	return ret;
}