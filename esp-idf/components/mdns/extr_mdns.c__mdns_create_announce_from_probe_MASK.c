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
struct TYPE_7__ {int /*<<< orphan*/  answers; TYPE_2__* servers; int /*<<< orphan*/  flags; int /*<<< orphan*/  ip_protocol; int /*<<< orphan*/  tcpip_if; } ;
typedef  TYPE_1__ mdns_tx_packet_t ;
struct TYPE_8__ {scalar_t__ type; struct TYPE_8__* next; int /*<<< orphan*/ * service; } ;
typedef  TYPE_2__ mdns_out_answer_t ;

/* Variables and functions */
 int /*<<< orphan*/  MDNS_FLAGS_AUTHORITATIVE ; 
 scalar_t__ MDNS_TYPE_A ; 
 scalar_t__ MDNS_TYPE_AAAA ; 
 scalar_t__ MDNS_TYPE_PTR ; 
 scalar_t__ MDNS_TYPE_SDPTR ; 
 scalar_t__ MDNS_TYPE_SRV ; 
 scalar_t__ MDNS_TYPE_TXT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int,int) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static mdns_tx_packet_t * FUNC3(mdns_tx_packet_t * probe)
{

    mdns_tx_packet_t * packet = FUNC1(probe->tcpip_if, probe->ip_protocol);
    if (!packet) {
        return NULL;
    }
    packet->flags = MDNS_FLAGS_AUTHORITATIVE;

    mdns_out_answer_t * s = probe->servers;
    while (s) {
        if (s->type == MDNS_TYPE_SRV) {
            if (!FUNC0(&packet->answers, MDNS_TYPE_SDPTR, s->service, false, false)
                    || !FUNC0(&packet->answers, MDNS_TYPE_PTR, s->service, false, false)
                    || !FUNC0(&packet->answers, MDNS_TYPE_SRV, s->service, true, false)
                    || !FUNC0(&packet->answers, MDNS_TYPE_TXT, s->service, true, false)) {
                FUNC2(packet);
                return NULL;
            }

        } else if (s->type == MDNS_TYPE_A || s->type == MDNS_TYPE_AAAA) {
            if (!FUNC0(&packet->answers, s->type, NULL, true, false)) {
                FUNC2(packet);
                return NULL;
            }
        }

        s = s->next;
    }
    return packet;
}