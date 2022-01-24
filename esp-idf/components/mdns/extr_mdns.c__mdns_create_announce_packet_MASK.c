#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint8_t ;
struct TYPE_7__ {int /*<<< orphan*/  answers; int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ mdns_tx_packet_t ;
struct TYPE_8__ {int /*<<< orphan*/ * service; } ;
typedef  TYPE_2__ mdns_srv_item_t ;
typedef  int /*<<< orphan*/  mdns_ip_protocol_t ;
typedef  int /*<<< orphan*/  mdns_if_t ;

/* Variables and functions */
 int /*<<< orphan*/  MDNS_FLAGS_AUTHORITATIVE ; 
 int /*<<< orphan*/  MDNS_TYPE_A ; 
 int /*<<< orphan*/  MDNS_TYPE_AAAA ; 
 int /*<<< orphan*/  MDNS_TYPE_PTR ; 
 int /*<<< orphan*/  MDNS_TYPE_SDPTR ; 
 int /*<<< orphan*/  MDNS_TYPE_SRV ; 
 int /*<<< orphan*/  MDNS_TYPE_TXT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static mdns_tx_packet_t * FUNC3(mdns_if_t tcpip_if, mdns_ip_protocol_t ip_protocol, mdns_srv_item_t * services[], size_t len, bool include_ip)
{
    mdns_tx_packet_t * packet = FUNC1(tcpip_if, ip_protocol);
    if (!packet) {
        return NULL;
    }
    packet->flags = MDNS_FLAGS_AUTHORITATIVE;

    uint8_t i;
    for (i=0; i<len; i++) {
        if (!FUNC0(&packet->answers, MDNS_TYPE_SDPTR, services[i]->service, false, false)
                || !FUNC0(&packet->answers, MDNS_TYPE_PTR, services[i]->service, false, false)
                || !FUNC0(&packet->answers, MDNS_TYPE_SRV, services[i]->service, true, false)
                || !FUNC0(&packet->answers, MDNS_TYPE_TXT, services[i]->service, true, false)) {
            FUNC2(packet);
            return NULL;
        }
    }
    if (include_ip) {
        if (!FUNC0(&packet->answers, MDNS_TYPE_A, NULL, true, false)
                || !FUNC0(&packet->answers, MDNS_TYPE_AAAA, NULL, true, false)) {
            FUNC2(packet);
            return NULL;
        }
    }
    return packet;
}