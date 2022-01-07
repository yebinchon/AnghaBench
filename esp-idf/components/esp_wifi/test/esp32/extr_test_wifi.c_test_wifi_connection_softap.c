
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int ESP_IF_WIFI_AP ;
 int MAC2STR (int *) ;
 char* MACSTR ;
 int TEST_ESP_OK (int ) ;
 int esp_wifi_get_mac (int ,int *) ;
 int portTICK_PERIOD_MS ;
 int sprintf (char*,char*,int ) ;
 int start_wifi_as_softap () ;
 int stop_wifi () ;
 int test_case_uses_tcpip () ;
 int unity_send_signal_param (char*,char*) ;
 int unity_wait_for_signal (char*) ;
 int vTaskDelay (int) ;

__attribute__((used)) static void test_wifi_connection_softap(void)
{
    char mac_str[19] = {0};
    uint8_t mac[6];

    test_case_uses_tcpip();

    start_wifi_as_softap();

    TEST_ESP_OK(esp_wifi_get_mac(ESP_IF_WIFI_AP, mac));
    sprintf(mac_str, MACSTR, MAC2STR(mac));

    unity_send_signal_param("SoftAP mac", mac_str);

    unity_wait_for_signal("STA connected");

    vTaskDelay(60000 / portTICK_PERIOD_MS);

    stop_wifi();
}
