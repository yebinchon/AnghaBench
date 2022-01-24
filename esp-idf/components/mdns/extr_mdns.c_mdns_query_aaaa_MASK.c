#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_13__ {TYPE_5__* addr; } ;
typedef  TYPE_4__ mdns_result_t ;
struct TYPE_10__ {int /*<<< orphan*/  addr; } ;
struct TYPE_11__ {TYPE_1__ ip6; } ;
struct TYPE_12__ {scalar_t__ type; TYPE_2__ u_addr; } ;
struct TYPE_14__ {struct TYPE_14__* next; TYPE_3__ addr; } ;
typedef  TYPE_5__ mdns_ip_addr_t ;
struct TYPE_15__ {int /*<<< orphan*/  addr; } ;
typedef  TYPE_6__ esp_ip6_addr_t ;
typedef  scalar_t__ esp_err_t ;

/* Variables and functions */
 scalar_t__ ESP_ERR_INVALID_ARG ; 
 scalar_t__ ESP_ERR_NOT_FOUND ; 
 scalar_t__ ESP_OK ; 
 scalar_t__ IPADDR_TYPE_V6 ; 
 int /*<<< orphan*/  MDNS_TYPE_AAAA ; 
 scalar_t__ FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,TYPE_4__**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

esp_err_t FUNC4(const char * name, uint32_t timeout, esp_ip6_addr_t * addr)
{
    mdns_result_t * result = NULL;
    esp_err_t err;

    if (FUNC0(name)) {
        return ESP_ERR_INVALID_ARG;
    }

    err = FUNC1(name, NULL, NULL, MDNS_TYPE_AAAA, timeout, 1, &result);

    if (err) {
        return err;
    }

    if (!result) {
        return ESP_ERR_NOT_FOUND;
    }

    mdns_ip_addr_t * a = result->addr;
    while (a) {
        if (a->addr.type == IPADDR_TYPE_V6) {
            FUNC3(addr->addr, a->addr.u_addr.ip6.addr, 16);
            FUNC2(result);
            return ESP_OK;
        }
        a = a->next;
    }

    FUNC2(result);
    return ESP_ERR_NOT_FOUND;
}