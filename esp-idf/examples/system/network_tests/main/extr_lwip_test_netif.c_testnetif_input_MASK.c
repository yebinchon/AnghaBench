#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pbuf {int /*<<< orphan*/  payload; int /*<<< orphan*/ * l2_owner; } ;
struct netif {int dummy; } ;
struct TYPE_3__ {scalar_t__ (* input ) (struct pbuf*,TYPE_1__*) ;} ;

/* Variables and functions */
 scalar_t__ ERR_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  NETIF_DEBUG ; 
 int /*<<< orphan*/  PBUF_RAM ; 
 int /*<<< orphan*/  PBUF_RAW ; 
 TYPE_1__* g_last_netif ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*,size_t) ; 
 struct pbuf* FUNC2 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pbuf*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 scalar_t__ FUNC5 (struct pbuf*,TYPE_1__*) ; 

void FUNC6(struct netif *netif, void *buffer, size_t len, void *eb)
{
    struct pbuf *p;
    if (g_last_netif == NULL) {
        FUNC4("error!");
        return;
    }

    FUNC4("simul in: %d\n", len);
    if (len==0) return;

    p = FUNC2(PBUF_RAW, len, PBUF_RAM);
    p->l2_owner = NULL;
    FUNC1(p->payload, buffer, len);

    /* full packet send to tcpip_thread to process
     * on success - the packet is processed and deallocated in tcpip stack
     * on failure - log error and deallocate the packet
     */
    if (g_last_netif->input(p, g_last_netif) != ERR_OK) {
        FUNC0(NETIF_DEBUG, ("ethernetif_input: IP input error\n"));
        FUNC3(p);
    }

}