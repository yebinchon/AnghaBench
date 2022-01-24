#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct tcpip_api_call_data {int dummy; } ;
struct netif {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  pcb; } ;
typedef  TYPE_2__ mdns_pcb_t ;
struct TYPE_7__ {size_t tcpip_if; size_t ip_protocol; void* err; int /*<<< orphan*/  pbt; int /*<<< orphan*/  port; int /*<<< orphan*/  ip; } ;
typedef  TYPE_3__ mdns_api_call_t ;
typedef  void* esp_err_t ;
typedef  void* err_t ;
struct TYPE_8__ {TYPE_1__* interfaces; } ;
struct TYPE_5__ {TYPE_2__* pcbs; } ;

/* Variables and functions */
 void* ERR_IF ; 
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 TYPE_4__* _mdns_server ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct netif*) ; 

__attribute__((used)) static err_t FUNC4(struct tcpip_api_call_data *api_call_msg)
{
    void * nif = NULL;
    mdns_api_call_t * msg = (mdns_api_call_t *)api_call_msg;
    mdns_pcb_t * _pcb = &_mdns_server->interfaces[msg->tcpip_if].pcbs[msg->ip_protocol];
    nif = FUNC1(FUNC0(msg->tcpip_if));
    if (!nif) {
        FUNC2(msg->pbt);
        msg->err = ERR_IF;
        return ERR_IF;
    }
    esp_err_t err = FUNC3 (_pcb->pcb, msg->pbt, msg->ip, msg->port, (struct netif *)nif);
    FUNC2(msg->pbt);
    msg->err = err;
    return err;
}