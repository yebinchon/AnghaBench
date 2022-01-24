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
struct netif {int dummy; } ;
typedef  int /*<<< orphan*/  esp_netif_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/ * FUNC1 (struct netif*) ; 

__attribute__((used)) static void FUNC2(struct netif *netif, void *buf)
{
    esp_netif_t *esp_netif = FUNC1(netif);
    FUNC0(esp_netif, buf);
}