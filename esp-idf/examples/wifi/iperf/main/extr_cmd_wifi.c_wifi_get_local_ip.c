
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ wifi_mode_t ;
typedef int uint32_t ;
typedef int esp_netif_t ;
struct TYPE_4__ {int addr; } ;
struct TYPE_5__ {TYPE_1__ ip; } ;
typedef TYPE_2__ esp_netif_ip_info_t ;


 int CONNECTED_BIT ;
 int ESP_LOGE (int ,char*) ;
 int TAG ;
 scalar_t__ WIFI_MODE_STA ;
 int esp_netif_get_ip_info (int *,TYPE_2__*) ;
 int esp_wifi_get_mode (scalar_t__*) ;
 int * netif_ap ;
 int * netif_sta ;
 int wifi_event_group ;
 int xEventGroupWaitBits (int ,int,int ,int,int ) ;

__attribute__((used)) static uint32_t wifi_get_local_ip(void)
{
    int bits = xEventGroupWaitBits(wifi_event_group, CONNECTED_BIT, 0, 1, 0);
    esp_netif_t * netif = netif_ap;
    esp_netif_ip_info_t ip_info;
    wifi_mode_t mode;

    esp_wifi_get_mode(&mode);
    if (WIFI_MODE_STA == mode) {
        bits = xEventGroupWaitBits(wifi_event_group, CONNECTED_BIT, 0, 1, 0);
        if (bits & CONNECTED_BIT) {
            netif = netif_sta;
        } else {
            ESP_LOGE(TAG, "sta has no IP");
            return 0;
        }
     }

     esp_netif_get_ip_info(netif, &ip_info);
     return ip_info.ip.addr;
}
