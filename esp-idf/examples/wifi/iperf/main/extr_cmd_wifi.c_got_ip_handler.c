
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int esp_event_base_t ;


 int CONNECTED_BIT ;
 int DISCONNECTED_BIT ;
 int wifi_event_group ;
 int xEventGroupClearBits (int ,int ) ;
 int xEventGroupSetBits (int ,int ) ;

__attribute__((used)) static void got_ip_handler(void* arg, esp_event_base_t event_base,
                           int32_t event_id, void* event_data)
{
    xEventGroupClearBits(wifi_event_group, DISCONNECTED_BIT);
    xEventGroupSetBits(wifi_event_group, CONNECTED_BIT);
}
