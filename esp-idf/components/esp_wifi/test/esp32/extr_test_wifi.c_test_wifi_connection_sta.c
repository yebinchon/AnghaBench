
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ EventBits_t ;


 int DISCONNECT_EVENT ;
 int TEST_ASSERT (int) ;
 int TEST_ASSERT_TRUE (int ) ;
 int portTICK_RATE_MS ;
 int printf (char*) ;
 int start_wifi_as_sta () ;
 int stop_wifi () ;
 int test_case_uses_tcpip () ;
 int unity_send_signal (char*) ;
 int unity_util_convert_mac_from_string (char*,int *) ;
 int unity_wait_for_signal_param (char*,char*,int) ;
 int wifi_connect_by_bssid (int *) ;
 int wifi_events ;
 scalar_t__ xEventGroupWaitBits (int ,int ,int,int ,int) ;

__attribute__((used)) static void test_wifi_connection_sta(void)
{
    char mac_str[19];
    uint8_t mac[6];
    EventBits_t bits;

    test_case_uses_tcpip();

    start_wifi_as_sta();

    unity_wait_for_signal_param("SoftAP mac", mac_str, 19);

    TEST_ASSERT_TRUE(unity_util_convert_mac_from_string(mac_str, mac));

    wifi_connect_by_bssid(mac);

    unity_send_signal("STA connected");

    bits = xEventGroupWaitBits(wifi_events, DISCONNECT_EVENT, 1, 0, 60000 / portTICK_RATE_MS);

    printf("wait finish\n");
    TEST_ASSERT(bits == 0);

    stop_wifi();
}
