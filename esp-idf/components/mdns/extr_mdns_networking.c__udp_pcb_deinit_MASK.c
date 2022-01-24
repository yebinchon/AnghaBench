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
struct TYPE_5__ {int probe_ip; int probe_running; scalar_t__ failed_probes; scalar_t__ probe_services_len; int /*<<< orphan*/ * probe_services; int /*<<< orphan*/ * pcb; int /*<<< orphan*/  state; } ;
typedef  TYPE_2__ mdns_pcb_t ;
typedef  size_t mdns_ip_protocol_t ;
typedef  size_t mdns_if_t ;
struct TYPE_6__ {TYPE_1__* interfaces; } ;
struct TYPE_4__ {TYPE_2__* pcbs; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCB_OFF ; 
 TYPE_3__* _mdns_server ; 
 int /*<<< orphan*/  FUNC0 (size_t,size_t,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(mdns_if_t tcpip_if, mdns_ip_protocol_t ip_protocol)
{
    if (!_mdns_server) {
        return;
    }
    mdns_pcb_t * _pcb = &_mdns_server->interfaces[tcpip_if].pcbs[ip_protocol];
    if (_pcb->pcb) {
        FUNC3(_pcb->probe_services);
        _pcb->state = PCB_OFF;
        _pcb->pcb = NULL;
        _pcb->probe_ip = false;
        _pcb->probe_services = NULL;
        _pcb->probe_services_len = 0;
        _pcb->probe_running = false;
        _pcb->failed_probes = 0;
        FUNC0(tcpip_if, ip_protocol, false);
        if(!FUNC1()) {
            FUNC2();
        }
    }
}