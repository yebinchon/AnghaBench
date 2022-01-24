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
typedef  size_t uint8_t ;
typedef  int /*<<< orphan*/  mdns_srv_item_t ;
struct TYPE_5__ {int probe_running; scalar_t__ probe_services_len; int /*<<< orphan*/ * probe_services; scalar_t__ pcb; } ;
typedef  TYPE_2__ mdns_pcb_t ;
typedef  int /*<<< orphan*/  mdns_ip_protocol_t ;
typedef  int /*<<< orphan*/  mdns_if_t ;
struct TYPE_6__ {TYPE_1__* interfaces; } ;
struct TYPE_4__ {TYPE_2__* pcbs; } ;

/* Variables and functions */
 size_t MDNS_IF_MAX ; 
 size_t MDNS_IP_PROTOCOL_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,size_t,int) ; 
 TYPE_3__* _mdns_server ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(mdns_srv_item_t ** services, size_t len, bool probe_ip, bool clear_old_probe)
{
    uint8_t i, j;
    for (i=0; i<MDNS_IF_MAX; i++) {
        for (j=0; j<MDNS_IP_PROTOCOL_MAX; j++) {
            if (_mdns_server->interfaces[i].pcbs[j].pcb) {
                mdns_pcb_t * _pcb = &_mdns_server->interfaces[i].pcbs[j];
                if (clear_old_probe) {
                    FUNC1(_pcb->probe_services);
                    _pcb->probe_services = NULL;
                    _pcb->probe_services_len = 0;
                    _pcb->probe_running = false;
                }
                FUNC0((mdns_if_t)i, (mdns_ip_protocol_t)j, services, len, probe_ip);
            }
        }
    }
}