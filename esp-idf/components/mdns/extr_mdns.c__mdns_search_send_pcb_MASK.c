#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mdns_tx_packet_t ;
typedef  int /*<<< orphan*/  mdns_search_once_t ;
typedef  size_t mdns_ip_protocol_t ;
typedef  size_t mdns_if_t ;
struct TYPE_6__ {TYPE_2__* interfaces; } ;
struct TYPE_5__ {TYPE_1__* pcbs; } ;
struct TYPE_4__ {scalar_t__ state; scalar_t__ pcb; } ;

/* Variables and functions */
 scalar_t__ PCB_INIT ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_3__* _mdns_server ; 

__attribute__((used)) static void FUNC3(mdns_search_once_t * search, mdns_if_t tcpip_if, mdns_ip_protocol_t ip_protocol)
{
    mdns_tx_packet_t * packet = NULL;
    if (_mdns_server->interfaces[tcpip_if].pcbs[ip_protocol].pcb && _mdns_server->interfaces[tcpip_if].pcbs[ip_protocol].state > PCB_INIT) {
        packet = FUNC0(search, tcpip_if, ip_protocol);
        if (!packet) {
            return;
        }
        FUNC1(packet);
        FUNC2(packet);
    }
}