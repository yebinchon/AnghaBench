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
struct netif {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  NETIF_DEBUG ; 
 struct netif* netif_default ; 

void
FUNC1(struct netif *netif)
{
  netif_default = netif;
  FUNC0(NETIF_DEBUG, ("netif: setting default interface %c%c\n",
           netif ? netif->name[0] : '\'', netif ? netif->name[1] : '\''));
}