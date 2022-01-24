#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct esp_ip6_addr {scalar_t__ addr; } ;
struct TYPE_16__ {scalar_t__ type; int /*<<< orphan*/  bye; int /*<<< orphan*/  flush; TYPE_8__* service; int /*<<< orphan*/  custom_proto; int /*<<< orphan*/  custom_service; int /*<<< orphan*/  custom_instance; } ;
typedef  TYPE_4__ mdns_out_answer_t ;
typedef  size_t mdns_if_t ;
struct TYPE_13__ {int /*<<< orphan*/  addr; } ;
struct TYPE_17__ {TYPE_1__ ip; } ;
typedef  TYPE_5__ esp_netif_ip_info_t ;
struct TYPE_19__ {int /*<<< orphan*/  proto; int /*<<< orphan*/  service; } ;
struct TYPE_18__ {TYPE_3__* interfaces; } ;
struct TYPE_15__ {TYPE_2__* pcbs; } ;
struct TYPE_14__ {scalar_t__ state; int /*<<< orphan*/  pcb; } ;

/* Variables and functions */
 size_t MDNS_IP_PROTOCOL_V4 ; 
 size_t MDNS_IP_PROTOCOL_V6 ; 
 scalar_t__ MDNS_TYPE_A ; 
 scalar_t__ MDNS_TYPE_AAAA ; 
 scalar_t__ MDNS_TYPE_PTR ; 
 scalar_t__ MDNS_TYPE_SDPTR ; 
 scalar_t__ MDNS_TYPE_SRV ; 
 scalar_t__ MDNS_TYPE_TXT ; 
 scalar_t__ PCB_DUP ; 
 scalar_t__ FUNC0 (struct esp_ip6_addr) ; 
 scalar_t__ FUNC1 (int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int*,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int*,int /*<<< orphan*/ *,TYPE_8__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int*,int /*<<< orphan*/ *,TYPE_8__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int*,int /*<<< orphan*/ *,TYPE_8__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (size_t) ; 
 size_t FUNC8 (size_t) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC10 (size_t) ; 
 TYPE_7__* _mdns_server ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,struct esp_ip6_addr*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,TYPE_5__*) ; 

__attribute__((used)) static uint8_t FUNC13(uint8_t * packet, uint16_t * index, mdns_out_answer_t * answer, mdns_if_t tcpip_if)
{
    if (answer->type == MDNS_TYPE_PTR) {

        if (answer->service) {
            return FUNC3(packet, index,
                FUNC9(answer->service),
                answer->service->service, answer->service->proto,
                answer->flush, answer->bye) > 0;
        } else {
            return FUNC3(packet, index,
                answer->custom_instance, answer->custom_service, answer->custom_proto,
                answer->flush, answer->bye) > 0;
        }
    } else if (answer->type == MDNS_TYPE_SRV) {
        return FUNC5(packet, index, answer->service, answer->flush, answer->bye) > 0;
    } else if (answer->type == MDNS_TYPE_TXT) {
        return FUNC6(packet, index, answer->service, answer->flush, answer->bye) > 0;
    } else if (answer->type == MDNS_TYPE_SDPTR) {
        return FUNC4(packet, index, answer->service, answer->flush, answer->bye) > 0;
    } else if (answer->type == MDNS_TYPE_A) {
        esp_netif_ip_info_t if_ip_info;
        if (!_mdns_server->interfaces[tcpip_if].pcbs[MDNS_IP_PROTOCOL_V4].pcb && _mdns_server->interfaces[tcpip_if].pcbs[MDNS_IP_PROTOCOL_V4].state != PCB_DUP) {
            return 0;
        }
        if (FUNC12(FUNC7(tcpip_if), &if_ip_info)) {
            return 0;
        }
        if (FUNC1(packet, index, if_ip_info.ip.addr, answer->flush, answer->bye) <= 0) {
            return 0;
        }
        if (!FUNC10(tcpip_if)) {
            return 1;
        }
        mdns_if_t other_if = FUNC8 (tcpip_if);
        if (FUNC12(FUNC7(other_if), &if_ip_info)) {
            return 1;
        }
        if (FUNC1(packet, index, if_ip_info.ip.addr, answer->flush, answer->bye) > 0) {
            return 2;
        }
        return 1;
    } else if (answer->type == MDNS_TYPE_AAAA) {
        struct esp_ip6_addr if_ip6;
        if (!_mdns_server->interfaces[tcpip_if].pcbs[MDNS_IP_PROTOCOL_V6].pcb && _mdns_server->interfaces[tcpip_if].pcbs[MDNS_IP_PROTOCOL_V6].state != PCB_DUP) {
            return 0;
        }
        if (FUNC11(FUNC7(tcpip_if), &if_ip6)) {
            return 0;
        }
        if (FUNC0(if_ip6)) {
            return 0;
        }
        if (FUNC2(packet, index, (uint8_t*)if_ip6.addr, answer->flush, answer->bye) <= 0) {
            return 0;
        }
        if (!FUNC10(tcpip_if)) {
            return 1;
        }
        mdns_if_t other_if = FUNC8 (tcpip_if);
        if (FUNC11(FUNC7(other_if), &if_ip6)) {
            return 1;
        }
        if (FUNC2(packet, index, (uint8_t*)if_ip6.addr, answer->flush, answer->bye) > 0) {
            return 2;
        }
        return 1;
    }
    return 0;
}