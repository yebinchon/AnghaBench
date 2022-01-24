#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {void* esp_netif; int if_index; int ip_changed; int /*<<< orphan*/  ip_info; } ;
typedef  TYPE_1__ ip_event_got_ip_t ;
typedef  int /*<<< orphan*/  ip ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  int /*<<< orphan*/  evt ;
typedef  int /*<<< orphan*/  esp_netif_ip_info_t ;
typedef  scalar_t__ esp_netif_dhcp_status_t ;
typedef  int /*<<< orphan*/  esp_event_base_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ ESP_NETIF_DHCP_INIT ; 
 scalar_t__ ESP_NETIF_DHCP_STOPPED ; 
 int /*<<< orphan*/  ESP_NETIF_IP_EVENT_GOT_IP ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  IP_EVENT ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (void*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (void*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

void FUNC14(void *esp_netif, esp_event_base_t base, int32_t event_id, void *data)
{
    esp_netif_dhcp_status_t status;

    FUNC0(TAG, "esp_netif action connected with netif%p from event_id=%d", esp_netif, event_id);
    FUNC11(esp_netif);

    FUNC4(esp_netif, &status);
    if (status == ESP_NETIF_DHCP_INIT) {
        FUNC5(esp_netif);
    } else if (status == ESP_NETIF_DHCP_STOPPED) {
        //
        esp_netif_ip_info_t ip;
        esp_netif_ip_info_t old_ip;

        FUNC7(esp_netif, &ip);
        FUNC8(esp_netif, &old_ip);

        if (FUNC9(&ip)) {
            ip_event_got_ip_t evt = {
                    .esp_netif = esp_netif,
                    .if_index = -1, // to indicate ptr to if used
                    .ip_changed = false,
            };

            if (FUNC12(&ip, &old_ip, sizeof(ip))) {
                evt.ip_changed = true;
            }

            FUNC13(&evt.ip_info, &ip, sizeof(esp_netif_ip_info_t));
            FUNC10(esp_netif, &ip);

            FUNC2("esp_event_send_internal in esp_netif_action_connected",
                    FUNC3(IP_EVENT, FUNC6(esp_netif, ESP_NETIF_IP_EVENT_GOT_IP) ,
                                                    &evt, sizeof(evt), 0), ESP_OK);
            FUNC0(TAG, "static ip: ip changed=%d", evt.ip_changed);
        } else {
            FUNC1(TAG, "invalid static ip");
        }
    }
}