#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mdns_tx_packet_t ;
typedef  int /*<<< orphan*/  mdns_srv_item_t ;
struct TYPE_6__ {size_t probe_services_len; int probe_ip; int probe_running; int failed_probes; int /*<<< orphan*/  state; int /*<<< orphan*/ ** probe_services; } ;
typedef  TYPE_2__ mdns_pcb_t ;
typedef  size_t mdns_ip_protocol_t ;
typedef  size_t mdns_if_t ;
struct TYPE_7__ {TYPE_1__* interfaces; } ;
struct TYPE_5__ {TYPE_2__* pcbs; } ;

/* Variables and functions */
 int /*<<< orphan*/  HOOK_MALLOC_FAILED ; 
 int /*<<< orphan*/  PCB_PROBE_1 ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC1 (size_t,size_t,int /*<<< orphan*/ **,size_t,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 TYPE_3__* _mdns_server ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(mdns_if_t tcpip_if, mdns_ip_protocol_t ip_protocol, mdns_srv_item_t ** services, size_t len, bool probe_ip)
{
    mdns_pcb_t * pcb = &_mdns_server->interfaces[tcpip_if].pcbs[ip_protocol];
    size_t services_final_len = len;

    if (FUNC0(pcb)) {
        services_final_len += pcb->probe_services_len;
    }
    mdns_srv_item_t ** _services = NULL;
    if (services_final_len) {
        _services = (mdns_srv_item_t **)FUNC5(sizeof(mdns_srv_item_t *) * services_final_len);
        if (!_services) {
            HOOK_MALLOC_FAILED;
            return;
        }

        size_t i;
        for (i=0; i<len; i++) {
            _services[i] = services[i];
        }
        if (pcb->probe_services) {
            for (i=0; i<pcb->probe_services_len; i++) {
                _services[len+i] = pcb->probe_services[i];
            }
            FUNC4(pcb->probe_services);
        }
    }

    probe_ip = pcb->probe_ip || probe_ip;

    pcb->probe_ip = false;
    pcb->probe_services = NULL;
    pcb->probe_services_len = 0;
    pcb->probe_running = false;

    mdns_tx_packet_t * packet = FUNC1(tcpip_if, ip_protocol, _services, services_final_len, true, probe_ip);
    if (!packet) {
        FUNC4(_services);
        return;
    }

    pcb->probe_ip = probe_ip;
    pcb->probe_services = _services;
    pcb->probe_services_len = services_final_len;
    pcb->probe_running = true;
    FUNC2(packet, ((pcb->failed_probes > 5)?1000:120) + (FUNC3() & 0x7F));
    pcb->state = PCB_PROBE_1;
}