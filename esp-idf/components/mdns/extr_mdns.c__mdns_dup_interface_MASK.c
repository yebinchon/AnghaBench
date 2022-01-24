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
typedef  size_t mdns_if_t ;
struct TYPE_6__ {TYPE_2__* interfaces; } ;
struct TYPE_5__ {TYPE_1__* pcbs; } ;
struct TYPE_4__ {int /*<<< orphan*/  state; scalar_t__ pcb; } ;

/* Variables and functions */
 size_t MDNS_IP_PROTOCOL_MAX ; 
 int /*<<< orphan*/  PCB_DUP ; 
 int /*<<< orphan*/  FUNC0 (size_t,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (size_t,size_t) ; 
 size_t FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (size_t,size_t) ; 
 TYPE_3__* _mdns_server ; 

__attribute__((used)) static void FUNC4(mdns_if_t tcpip_if)
{
    uint8_t i;
    mdns_if_t other_if = FUNC2 (tcpip_if);
    for (i=0; i<MDNS_IP_PROTOCOL_MAX; i++) {
        if (_mdns_server->interfaces[other_if].pcbs[i].pcb) {
            //stop this interface and mark as dup
            if (_mdns_server->interfaces[tcpip_if].pcbs[i].pcb) {
                FUNC1(tcpip_if, i);
                FUNC3(tcpip_if, i);
            }
            _mdns_server->interfaces[tcpip_if].pcbs[i].state = PCB_DUP;
            FUNC0(other_if, i, NULL, 0, true);
        }
    }
}