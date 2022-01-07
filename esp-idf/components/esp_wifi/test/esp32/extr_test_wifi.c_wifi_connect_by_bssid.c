
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int bssid_set; int bssid; int password; int ssid; } ;
struct TYPE_5__ {TYPE_1__ sta; } ;
typedef TYPE_2__ wifi_config_t ;
typedef int uint8_t ;
typedef scalar_t__ EventBits_t ;


 int DEFAULT_PWD ;
 int DEFAULT_SSID ;
 scalar_t__ GOT_IP_EVENT ;
 int TEST_ASSERT (int) ;
 int TEST_ESP_OK (int ) ;
 int WIFI_IF_STA ;
 int esp_wifi_connect () ;
 int esp_wifi_set_config (int ,TYPE_2__*) ;
 int memcpy (int ,int *,int) ;
 int portTICK_RATE_MS ;
 int wifi_events ;
 scalar_t__ xEventGroupWaitBits (int ,scalar_t__,int,int ,int) ;

__attribute__((used)) static void wifi_connect_by_bssid(uint8_t *bssid)
{
    EventBits_t bits;

    wifi_config_t w_config = {
        .sta.ssid = DEFAULT_SSID,
        .sta.password = DEFAULT_PWD,
        .sta.bssid_set = 1,
    };

    memcpy(w_config.sta.bssid, bssid, 6);

    TEST_ESP_OK(esp_wifi_set_config(WIFI_IF_STA, &w_config));
    TEST_ESP_OK(esp_wifi_connect());
    bits = xEventGroupWaitBits(wifi_events, GOT_IP_EVENT, 1, 0, 5000/portTICK_RATE_MS);
    TEST_ASSERT(bits == GOT_IP_EVENT);
}
