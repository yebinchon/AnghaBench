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
typedef  size_t mdns_ip_protocol_t ;
typedef  size_t mdns_if_t ;
struct TYPE_6__ {TYPE_2__* interfaces; } ;
struct TYPE_5__ {TYPE_1__* pcbs; } ;
struct TYPE_4__ {scalar_t__ state; scalar_t__ pcb; } ;

/* Variables and functions */
 size_t MDNS_IF_MAX ; 
 scalar_t__ PCB_DUP ; 
 void* PCB_OFF ; 
 int /*<<< orphan*/  FUNC0 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (size_t,size_t) ; 
 size_t FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (size_t,size_t) ; 
 TYPE_3__* _mdns_server ; 

void FUNC4(mdns_if_t tcpip_if, mdns_ip_protocol_t ip_protocol)
{
    if (_mdns_server->interfaces[tcpip_if].pcbs[ip_protocol].pcb) {
        FUNC0(tcpip_if, ip_protocol);
        FUNC3(tcpip_if, ip_protocol);
        mdns_if_t other_if = FUNC2 (tcpip_if);
        if (other_if != MDNS_IF_MAX && _mdns_server->interfaces[other_if].pcbs[ip_protocol].state == PCB_DUP) {
            _mdns_server->interfaces[other_if].pcbs[ip_protocol].state = PCB_OFF;
            FUNC1(other_if, ip_protocol);
        }
    }
    _mdns_server->interfaces[tcpip_if].pcbs[ip_protocol].state = PCB_OFF;
}