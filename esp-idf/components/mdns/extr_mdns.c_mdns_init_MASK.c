#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
struct TYPE_8__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  action_queue; } ;
typedef  TYPE_2__ mdns_server_t ;
typedef  int /*<<< orphan*/  mdns_action_t ;
struct TYPE_7__ {scalar_t__ addr; } ;
struct TYPE_9__ {TYPE_1__ ip; } ;
typedef  TYPE_3__ esp_netif_ip_info_t ;
typedef  int /*<<< orphan*/  esp_ip6_addr_t ;
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_NO_MEM ; 
 int /*<<< orphan*/  ESP_EVENT_ANY_ID ; 
 int /*<<< orphan*/  ESP_FAIL ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  ETH_EVENT ; 
 int /*<<< orphan*/  HOOK_MALLOC_FAILED ; 
 int /*<<< orphan*/  IP_EVENT ; 
 int /*<<< orphan*/  MDNS_ACTION_QUEUE_LEN ; 
 scalar_t__ MDNS_IF_MAX ; 
 int /*<<< orphan*/  MDNS_IP_PROTOCOL_V4 ; 
 int /*<<< orphan*/  MDNS_IP_PROTOCOL_V6 ; 
 int /*<<< orphan*/  WIFI_EVENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 TYPE_2__* _mdns_server ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  event_handler ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 () ; 

esp_err_t FUNC16(void)
{
    esp_err_t err = ESP_OK;

    if (_mdns_server) {
        return err;
    }

    _mdns_server = (mdns_server_t *)FUNC10(sizeof(mdns_server_t));
    if (!_mdns_server) {
        HOOK_MALLOC_FAILED;
        return ESP_ERR_NO_MEM;
    }
    FUNC11((uint8_t*)_mdns_server, 0, sizeof(mdns_server_t));

    _mdns_server->lock = FUNC15();
    if (!_mdns_server->lock) {
        err = ESP_ERR_NO_MEM;
        goto free_server;
    }

    _mdns_server->action_queue = FUNC14(MDNS_ACTION_QUEUE_LEN, sizeof(mdns_action_t *));
    if (!_mdns_server->action_queue) {
        err = ESP_ERR_NO_MEM;
        goto free_lock;
    }
    if ((err = FUNC5(WIFI_EVENT, ESP_EVENT_ANY_ID, &event_handler, NULL)) != ESP_OK) {
        goto free_event_handlers;
    }
    if ((err = FUNC5(IP_EVENT, ESP_EVENT_ANY_ID, &event_handler, NULL)) != ESP_OK) {
        goto free_event_handlers;
    }
#if CONFIG_ETH_ENABLED
    if ((err = esp_event_handler_register(ETH_EVENT, ESP_EVENT_ANY_ID, &event_handler, NULL)) != ESP_OK) {
        goto free_event_handlers;
    }
#endif
    uint8_t i;
    esp_ip6_addr_t tmp_addr6;
    esp_netif_ip_info_t if_ip_info;

    for (i=0; i<MDNS_IF_MAX; i++) {
        if (!FUNC7(FUNC3(i), &tmp_addr6) && !FUNC0(tmp_addr6)) {
            FUNC2(i, MDNS_IP_PROTOCOL_V6);
        }
        if (!FUNC8(FUNC3(i), &if_ip_info) && if_ip_info.ip.addr) {
            FUNC2(i, MDNS_IP_PROTOCOL_V4);
        }
    }

    if (FUNC4()) {
        //service start failed!
        err = ESP_FAIL;
        goto free_all_and_disable_pcbs;
    }

    return ESP_OK;

free_all_and_disable_pcbs:
    for (i=0; i<MDNS_IF_MAX; i++) {
        FUNC1(i, MDNS_IP_PROTOCOL_V6);
        FUNC1(i, MDNS_IP_PROTOCOL_V4);
    }
free_event_handlers:
    FUNC6(WIFI_EVENT, ESP_EVENT_ANY_ID, &event_handler);
    FUNC6(IP_EVENT, ESP_EVENT_ANY_ID, &event_handler);
#if CONFIG_ETH_ENABLED
    esp_event_handler_unregister(ETH_EVENT, ESP_EVENT_ANY_ID, &event_handler);
#endif
    FUNC12(_mdns_server->action_queue);
free_lock:
    FUNC13(_mdns_server->lock);
free_server:
    FUNC9(_mdns_server);
    _mdns_server = NULL;
    return err;
}