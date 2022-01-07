
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int portTICK_PERIOD_MS ;
 int start_wifi_as_softap () ;
 int stop_wifi () ;
 int test_case_uses_tcpip () ;
 int unity_send_signal (char*) ;
 int unity_wait_for_signal (char*) ;
 int vTaskDelay (int) ;

__attribute__((used)) static void receive_ds2ds_packet(void)
{
    test_case_uses_tcpip();
    start_wifi_as_softap();
    unity_wait_for_signal("sender ready");
    unity_send_signal("receiver ready");


    vTaskDelay(1000/portTICK_PERIOD_MS);
    stop_wifi();
}
