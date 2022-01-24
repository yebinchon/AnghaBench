#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mdns_ip_protocol_t ;
typedef  int /*<<< orphan*/  mdns_if_t ;
struct TYPE_2__ {int /*<<< orphan*/  err; int /*<<< orphan*/  call; int /*<<< orphan*/  ip_protocol; int /*<<< orphan*/  tcpip_if; } ;
typedef  TYPE_1__ mdns_api_call_t ;
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  _mdns_pcb_init_api ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

esp_err_t FUNC1(mdns_if_t tcpip_if, mdns_ip_protocol_t ip_protocol)
{
    mdns_api_call_t msg = {
        .tcpip_if = tcpip_if,
        .ip_protocol = ip_protocol
    };
    FUNC0(_mdns_pcb_init_api, &msg.call);
    return msg.err;
}