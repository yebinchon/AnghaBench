#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_11__ {scalar_t__ port; int /*<<< orphan*/  dst; int /*<<< orphan*/  answers; int /*<<< orphan*/  additional; int /*<<< orphan*/  distributed; int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ mdns_tx_packet_t ;
struct TYPE_12__ {int /*<<< orphan*/ * service; } ;
typedef  TYPE_2__ mdns_srv_item_t ;
struct TYPE_13__ {scalar_t__ type; struct TYPE_13__* next; scalar_t__ unicast; scalar_t__ proto; scalar_t__ service; } ;
typedef  TYPE_3__ mdns_parsed_question_t ;
struct TYPE_14__ {scalar_t__ src_port; int /*<<< orphan*/  src; int /*<<< orphan*/  probe; TYPE_3__* questions; int /*<<< orphan*/  distributed; int /*<<< orphan*/  ip_protocol; int /*<<< orphan*/  tcpip_if; } ;
typedef  TYPE_4__ mdns_parsed_packet_t ;
typedef  int /*<<< orphan*/  esp_ip_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  MDNS_FLAGS_AUTHORITATIVE ; 
 scalar_t__ MDNS_SERVICE_PORT ; 
 scalar_t__ MDNS_TYPE_A ; 
 scalar_t__ MDNS_TYPE_AAAA ; 
 scalar_t__ MDNS_TYPE_ANY ; 
 scalar_t__ MDNS_TYPE_PTR ; 
 scalar_t__ MDNS_TYPE_SDPTR ; 
 scalar_t__ MDNS_TYPE_SRV ; 
 scalar_t__ MDNS_TYPE_TXT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int,int) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_2__* FUNC4 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC7(mdns_parsed_packet_t * parsed_packet)
{
    if (!parsed_packet->questions) {
        return;
    }
    bool send_flush = parsed_packet->src_port == MDNS_SERVICE_PORT;
    bool unicast = false;
    bool shared = false;
    mdns_tx_packet_t * packet = FUNC1(parsed_packet->tcpip_if, parsed_packet->ip_protocol);
    if (!packet) {
        return;
    }
    packet->flags = MDNS_FLAGS_AUTHORITATIVE;
    packet->distributed = parsed_packet->distributed;

    mdns_parsed_question_t * q = parsed_packet->questions;
    while (q) {
        mdns_srv_item_t * service = NULL;
        if (q->service && q->proto) {
            service = FUNC4(q->service, q->proto);
            if (!service) {
                continue;
            }
        }
        if (q->unicast) {
            unicast = true;
        }
        if (service) {
            if (q->type == MDNS_TYPE_PTR || q->type == MDNS_TYPE_ANY) {
                if (q->type == MDNS_TYPE_PTR || !parsed_packet->probe) {
                    shared = true;
                }
                if (!FUNC0(&packet->answers, MDNS_TYPE_PTR, service->service, false, false)
                        || !FUNC0(&packet->answers, MDNS_TYPE_SRV, service->service, send_flush, false)
                        || !FUNC0(&packet->answers, MDNS_TYPE_TXT, service->service, send_flush, false)
                        || !FUNC0(shared?&packet->additional:&packet->answers, MDNS_TYPE_A, NULL, send_flush, false)
                        || !FUNC0(shared?&packet->additional:&packet->answers, MDNS_TYPE_AAAA, NULL, send_flush, false)) {
                    FUNC3(packet);
                    return;
                }
            } else if (q->type == MDNS_TYPE_SRV) {
                if (!FUNC0(&packet->answers, MDNS_TYPE_SRV, service->service, send_flush, false)
                        || !FUNC0(&packet->additional, MDNS_TYPE_A, NULL, send_flush, false)
                        || !FUNC0(&packet->additional, MDNS_TYPE_AAAA, NULL, send_flush, false)) {
                    FUNC3(packet);
                    return;
                }
            } else if (q->type == MDNS_TYPE_TXT) {
                if (!FUNC0(&packet->answers, MDNS_TYPE_TXT, service->service, send_flush, false)) {
                    FUNC3(packet);
                    return;
                }
            } else if (q->type == MDNS_TYPE_SDPTR) {
                shared = true;
                if (!FUNC0(&packet->answers, MDNS_TYPE_PTR, service->service, false, false)) {
                    FUNC3(packet);
                    return;
                }
            }
        } else {
            if (q->type == MDNS_TYPE_ANY || q->type == MDNS_TYPE_A || q->type == MDNS_TYPE_AAAA) {
                if (!FUNC0(&packet->answers, MDNS_TYPE_A, NULL, send_flush, false)
                        || !FUNC0(&packet->answers, MDNS_TYPE_AAAA, NULL, send_flush, false)) {
                    FUNC3(packet);
                    return;
                }
            } else if (!FUNC0(&packet->answers, q->type, NULL, send_flush, false)) {
                FUNC3(packet);
                return;
            }
        }
        q = q->next;
    }
    if (unicast || !send_flush) {
        FUNC6(&packet->dst, &parsed_packet->src, sizeof(esp_ip_addr_t));
        packet->port = parsed_packet->src_port;
    }

    static uint8_t share_step = 0;
    if (shared) {
        FUNC5(packet, 25 + (share_step * 25));
        share_step = (share_step + 1) & 0x03;
    } else {
        FUNC2(packet);
        FUNC3(packet);
    }
}