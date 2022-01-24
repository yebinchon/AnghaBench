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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_3__ {int /*<<< orphan*/  dst; int /*<<< orphan*/  port; scalar_t__ ip_protocol; int /*<<< orphan*/  tcpip_if; } ;
typedef  TYPE_1__ mdns_tx_packet_t ;
typedef  scalar_t__ mdns_ip_protocol_t ;
typedef  int /*<<< orphan*/  mdns_if_t ;
typedef  int /*<<< orphan*/  esp_ip_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  HOOK_MALLOC_FAILED ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ MDNS_IP_PROTOCOL_V4 ; 
 int /*<<< orphan*/  MDNS_SERVICE_PORT ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static mdns_tx_packet_t * FUNC5(mdns_if_t tcpip_if, mdns_ip_protocol_t ip_protocol)
{
    mdns_tx_packet_t * packet = (mdns_tx_packet_t*)FUNC2(sizeof(mdns_tx_packet_t));
    if (!packet) {
        HOOK_MALLOC_FAILED;
        return NULL;
    }
    FUNC4((uint8_t*)packet, 0, sizeof(mdns_tx_packet_t));
    packet->tcpip_if = tcpip_if;
    packet->ip_protocol = ip_protocol;
    packet->port = MDNS_SERVICE_PORT;
    if (ip_protocol == MDNS_IP_PROTOCOL_V4) {
        FUNC1(&packet->dst, 224, 0, 0, 251);
    } else {
        esp_ip_addr_t addr = FUNC0(0x000002ff, 0, 0, 0xfb000000);
        FUNC3(&packet->dst, &addr, sizeof(esp_ip_addr_t));
    }
    return packet;
}