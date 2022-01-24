#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  answers; int /*<<< orphan*/  additional; } ;
typedef  TYPE_2__ mdns_tx_packet_t ;
struct TYPE_16__ {int /*<<< orphan*/ * service; } ;
typedef  TYPE_3__ mdns_srv_item_t ;
struct TYPE_17__ {scalar_t__ state; scalar_t__ pcb; } ;
typedef  TYPE_4__ mdns_pcb_t ;
typedef  size_t mdns_ip_protocol_t ;
typedef  size_t mdns_if_t ;
struct TYPE_18__ {int /*<<< orphan*/  hostname; TYPE_1__* interfaces; } ;
struct TYPE_14__ {TYPE_4__* pcbs; } ;

/* Variables and functions */
 int /*<<< orphan*/  MDNS_TYPE_A ; 
 int /*<<< orphan*/  MDNS_TYPE_AAAA ; 
 int /*<<< orphan*/  MDNS_TYPE_PTR ; 
 int /*<<< orphan*/  MDNS_TYPE_SDPTR ; 
 int /*<<< orphan*/  MDNS_TYPE_SRV ; 
 int /*<<< orphan*/  MDNS_TYPE_TXT ; 
 void* PCB_ANNOUNCE_1 ; 
 scalar_t__ PCB_RUNNING ; 
 scalar_t__ FUNC0 (TYPE_4__*) ; 
 scalar_t__ FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 TYPE_2__* FUNC3 (size_t,size_t,TYPE_3__**,size_t,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC5 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC6 (size_t,size_t,TYPE_3__**,size_t,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_5__* _mdns_server ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(mdns_if_t tcpip_if, mdns_ip_protocol_t ip_protocol, mdns_srv_item_t ** services, size_t len, bool include_ip)
{
    mdns_pcb_t * _pcb = &_mdns_server->interfaces[tcpip_if].pcbs[ip_protocol];
    size_t i;
    if (_pcb->pcb) {
        if (FUNC1(_pcb)) {
            FUNC6(tcpip_if, ip_protocol, services, len, include_ip);
        } else if (FUNC0(_pcb)) {
            mdns_tx_packet_t *  p = FUNC5(tcpip_if, ip_protocol);
            if (p) {
                for (i=0; i<len; i++) {
                    if (!FUNC2(&p->answers, MDNS_TYPE_SDPTR, services[i]->service, false, false)
                            || !FUNC2(&p->answers, MDNS_TYPE_PTR, services[i]->service, false, false)
                            || !FUNC2(&p->answers, MDNS_TYPE_SRV, services[i]->service, true, false)
                            || !FUNC2(&p->answers, MDNS_TYPE_TXT, services[i]->service, true, false)) {
                        break;
                    }
                }
                if (include_ip) {
                    FUNC4(&p->additional, MDNS_TYPE_A, NULL);
                    FUNC4(&p->additional, MDNS_TYPE_AAAA, NULL);
                    FUNC2(&p->answers, MDNS_TYPE_A, NULL, true, false);
                    FUNC2(&p->answers, MDNS_TYPE_AAAA, NULL, true, false);
                }
                _pcb->state = PCB_ANNOUNCE_1;
            }
        } else if (_pcb->state == PCB_RUNNING) {

            if (FUNC8(_mdns_server->hostname)) {
                return;
            }

            _pcb->state = PCB_ANNOUNCE_1;
            mdns_tx_packet_t *  p = FUNC3(tcpip_if, ip_protocol, services, len, include_ip);
            if (p) {
                FUNC7(p, 0);
            }
        }
    }
}