#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  esp_err_t ;
struct TYPE_6__ {int mcast_ttl; int /*<<< orphan*/  remote_ip; int /*<<< orphan*/  remote_port; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_INVALID_STATE ; 
 int /*<<< orphan*/  ESP_ERR_NO_MEM ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  IP_ANY_TYPE ; 
 int /*<<< orphan*/  MDNS_SERVICE_PORT ; 
 int /*<<< orphan*/  _mdns_server ; 
 TYPE_1__* _pcb_main ; 
 int /*<<< orphan*/  _udp_recv ; 
 int /*<<< orphan*/  ip_addr_any_type ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static esp_err_t FUNC5(void)
{
    if(_pcb_main) {
        return ESP_OK;
    }
    _pcb_main = FUNC2();
    if (!_pcb_main) {
        return ESP_ERR_NO_MEM;
    }
    if (FUNC1(_pcb_main, IP_ANY_TYPE, MDNS_SERVICE_PORT) != 0) {
        FUNC4(_pcb_main);
        _pcb_main = NULL;
        return ESP_ERR_INVALID_STATE;
    }
    _pcb_main->mcast_ttl = 1;
    _pcb_main->remote_port = MDNS_SERVICE_PORT;
    FUNC0(_pcb_main->remote_ip, ip_addr_any_type);
    FUNC3(_pcb_main, &_udp_recv, _mdns_server);
    return ESP_OK;
}