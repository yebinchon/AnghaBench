
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int transmitted ;
typedef int total_time_ms ;
typedef int received ;
typedef int esp_ping_handle_t ;
typedef int EventGroupHandle_t ;


 int ESP_PING_PROF_DURATION ;
 int ESP_PING_PROF_REPLY ;
 int ESP_PING_PROF_REQUEST ;
 int ETH_PING_END_BIT ;
 int esp_ping_get_profile (int ,int ,int*,int) ;
 int printf (char*,int,int,int) ;
 int xEventGroupSetBits (int ,int ) ;

__attribute__((used)) static void test_on_ping_end(esp_ping_handle_t hdl, void *args)
{
    EventGroupHandle_t eth_event_group = (EventGroupHandle_t)args;
    uint32_t transmitted;
    uint32_t received;
    uint32_t total_time_ms;

    esp_ping_get_profile(hdl, ESP_PING_PROF_REQUEST, &transmitted, sizeof(transmitted));
    esp_ping_get_profile(hdl, ESP_PING_PROF_REPLY, &received, sizeof(received));
    esp_ping_get_profile(hdl, ESP_PING_PROF_DURATION, &total_time_ms, sizeof(total_time_ms));
    printf("%d packets transmitted, %d received, time %dms\n", transmitted, received, total_time_ms);
    if (transmitted == received) {
        xEventGroupSetBits(eth_event_group, ETH_PING_END_BIT);
    }
}
