
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* esp_netif; int if_index; int ip_changed; int ip_info; } ;
typedef TYPE_1__ ip_event_got_ip_t ;
typedef int ip ;
typedef int int32_t ;
typedef int evt ;
typedef int esp_netif_ip_info_t ;
typedef scalar_t__ esp_netif_dhcp_status_t ;
typedef int esp_event_base_t ;


 int ESP_LOGD (int ,char*,int,...) ;
 int ESP_LOGE (int ,char*) ;
 int ESP_NETIF_CALL_CHECK (char*,int ,int ) ;
 scalar_t__ ESP_NETIF_DHCP_INIT ;
 scalar_t__ ESP_NETIF_DHCP_STOPPED ;
 int ESP_NETIF_IP_EVENT_GOT_IP ;
 int ESP_OK ;
 int IP_EVENT ;
 int TAG ;
 int esp_event_send_internal (int ,int ,TYPE_1__*,int,int ) ;
 int esp_netif_dhcpc_get_status (void*,scalar_t__*) ;
 int esp_netif_dhcpc_start (void*) ;
 int esp_netif_get_event_id (void*,int ) ;
 int esp_netif_get_ip_info (void*,int *) ;
 int esp_netif_get_old_ip_info (void*,int *) ;
 scalar_t__ esp_netif_is_valid_static_ip (int *) ;
 int esp_netif_set_old_ip_info (void*,int *) ;
 int esp_netif_up (void*) ;
 scalar_t__ memcmp (int *,int *,int) ;
 int memcpy (int *,int *,int) ;

void esp_netif_action_connected(void *esp_netif, esp_event_base_t base, int32_t event_id, void *data)
{
    esp_netif_dhcp_status_t status;

    ESP_LOGD(TAG, "esp_netif action connected with netif%p from event_id=%d", esp_netif, event_id);
    esp_netif_up(esp_netif);

    esp_netif_dhcpc_get_status(esp_netif, &status);
    if (status == ESP_NETIF_DHCP_INIT) {
        esp_netif_dhcpc_start(esp_netif);
    } else if (status == ESP_NETIF_DHCP_STOPPED) {

        esp_netif_ip_info_t ip;
        esp_netif_ip_info_t old_ip;

        esp_netif_get_ip_info(esp_netif, &ip);
        esp_netif_get_old_ip_info(esp_netif, &old_ip);

        if (esp_netif_is_valid_static_ip(&ip)) {
            ip_event_got_ip_t evt = {
                    .esp_netif = esp_netif,
                    .if_index = -1,
                    .ip_changed = 0,
            };

            if (memcmp(&ip, &old_ip, sizeof(ip))) {
                evt.ip_changed = 1;
            }

            memcpy(&evt.ip_info, &ip, sizeof(esp_netif_ip_info_t));
            esp_netif_set_old_ip_info(esp_netif, &ip);

            ESP_NETIF_CALL_CHECK("esp_event_send_internal in esp_netif_action_connected",
                    esp_event_send_internal(IP_EVENT, esp_netif_get_event_id(esp_netif, ESP_NETIF_IP_EVENT_GOT_IP) ,
                                                    &evt, sizeof(evt), 0), ESP_OK);
            ESP_LOGD(TAG, "static ip: ip changed=%d", evt.ip_changed);
        } else {
            ESP_LOGE(TAG, "invalid static ip");
        }
    }
}
