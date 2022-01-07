
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float uint32_t ;
typedef int transmitted ;
typedef int total_time_ms ;
typedef int target_addr ;
typedef int received ;
typedef float ip_addr_t ;
typedef int esp_ping_handle_t ;


 int ESP_PING_PROF_DURATION ;
 int ESP_PING_PROF_IPADDR ;
 int ESP_PING_PROF_REPLY ;
 int ESP_PING_PROF_REQUEST ;
 scalar_t__ IP_IS_V4 (float*) ;
 int esp_ping_delete_session (int ) ;
 int esp_ping_get_profile (int ,int ,float*,int) ;
 char* inet6_ntoa (int ) ;
 char* inet_ntoa (int ) ;
 int * ip_2_ip4 (float*) ;
 int * ip_2_ip6 (float*) ;
 int printf (char*,...) ;

__attribute__((used)) static void cmd_ping_on_ping_end(esp_ping_handle_t hdl, void *args)
{
    ip_addr_t target_addr;
    uint32_t transmitted;
    uint32_t received;
    uint32_t total_time_ms;
    esp_ping_get_profile(hdl, ESP_PING_PROF_REQUEST, &transmitted, sizeof(transmitted));
    esp_ping_get_profile(hdl, ESP_PING_PROF_REPLY, &received, sizeof(received));
    esp_ping_get_profile(hdl, ESP_PING_PROF_IPADDR, &target_addr, sizeof(target_addr));
    esp_ping_get_profile(hdl, ESP_PING_PROF_DURATION, &total_time_ms, sizeof(total_time_ms));
    uint32_t loss = (uint32_t)((1 - ((float)received) / transmitted) * 100);
    if (IP_IS_V4(&target_addr)) {
        printf("\n--- %s ping statistics ---\n", inet_ntoa(*ip_2_ip4(&target_addr)));
    } else {
        printf("\n--- %s ping statistics ---\n", inet6_ntoa(*ip_2_ip6(&target_addr)));
    }
    printf("%d packets transmitted, %d received, %d%% packet loss, time %dms\n",
           transmitted, received, loss, total_time_ms);


    esp_ping_delete_session(hdl);
}
