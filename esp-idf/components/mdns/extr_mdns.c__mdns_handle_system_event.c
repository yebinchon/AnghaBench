
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t mdns_if_t ;
typedef int int32_t ;
typedef int esp_netif_t ;
typedef int esp_netif_dhcp_status_t ;
typedef scalar_t__ esp_event_base_t ;


 int ESP_NETIF_DHCP_STOPPED ;


 int ETHERNET_EVENT_START ;
 scalar_t__ ETH_EVENT ;
 scalar_t__ IP_EVENT ;



 size_t MDNS_IF_AP ;
 size_t MDNS_IF_ETH ;
 size_t MDNS_IF_STA ;
 int MDNS_IP_PROTOCOL_V4 ;
 int MDNS_IP_PROTOCOL_V6 ;
 scalar_t__ WIFI_EVENT ;




 int WIFI_EVENT_STA_START ;
 int _mdns_announce_pcb (size_t,int ,int *,int ,int) ;
 int _mdns_disable_pcb (size_t,int ) ;
 int _mdns_enable_pcb (size_t,int ) ;
 int _mdns_get_esp_netif (size_t) ;
 size_t _mdns_get_if_from_esp_netif (int *) ;
 int _mdns_server ;
 int esp_netif_dhcpc_get_status (int ,int *) ;
 int esp_netif_get_handle_from_ifkey (char*) ;
 int * s_esp_netifs ;

__attribute__((used)) static void _mdns_handle_system_event(esp_event_base_t event_base,
                                      int32_t event_id, esp_netif_t* interface)
{
    if (!_mdns_server) {
        return;
    }


    if (event_base == WIFI_EVENT && event_id == WIFI_EVENT_STA_START) {
        s_esp_netifs[MDNS_IF_STA] = esp_netif_get_handle_from_ifkey("WIFI_STA_DEF");
    } else if (event_base == WIFI_EVENT && event_id == 131) {
        s_esp_netifs[MDNS_IF_AP] = esp_netif_get_handle_from_ifkey("WIFI_AP_DEF");




    }

    esp_netif_dhcp_status_t dcst;
    if (event_base == WIFI_EVENT) {
        switch(event_id) {
            case 129:
                if (!esp_netif_dhcpc_get_status(_mdns_get_esp_netif(MDNS_IF_STA), &dcst)) {
                    if (dcst == ESP_NETIF_DHCP_STOPPED) {
                        _mdns_enable_pcb(MDNS_IF_STA, MDNS_IP_PROTOCOL_V4);
                    }
                }
                break;
            case 128:
                _mdns_disable_pcb(MDNS_IF_STA, MDNS_IP_PROTOCOL_V4);
                _mdns_disable_pcb(MDNS_IF_STA, MDNS_IP_PROTOCOL_V6);
                break;
            case 131:
                _mdns_enable_pcb(MDNS_IF_AP, MDNS_IP_PROTOCOL_V4);
                break;
            case 130:
                _mdns_disable_pcb(MDNS_IF_AP, MDNS_IP_PROTOCOL_V4);
                _mdns_disable_pcb(MDNS_IF_AP, MDNS_IP_PROTOCOL_V6);
                break;
            default:
                break;
        }
    }
    else if (event_base == IP_EVENT) {
        switch (event_id) {
            case 132:
                _mdns_enable_pcb(MDNS_IF_STA, MDNS_IP_PROTOCOL_V4);
                _mdns_announce_pcb(MDNS_IF_STA, MDNS_IP_PROTOCOL_V6, ((void*)0), 0, 1);
                break;





            case 133:
            {
                mdns_if_t mdns_if = _mdns_get_if_from_esp_netif(interface);
                _mdns_enable_pcb(mdns_if, MDNS_IP_PROTOCOL_V6);
                _mdns_announce_pcb(mdns_if, MDNS_IP_PROTOCOL_V4, ((void*)0), 0, 1);

            }
                break;
            default:
                break;
        }
    }
}
