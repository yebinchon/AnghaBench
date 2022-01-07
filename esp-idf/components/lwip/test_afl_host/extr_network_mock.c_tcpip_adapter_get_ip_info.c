
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tcpip_adapter_ip_info_t ;
typedef int tcpip_adapter_if_t ;
typedef int esp_err_t ;


 int ESP_OK ;

esp_err_t tcpip_adapter_get_ip_info(tcpip_adapter_if_t tcpip_if, tcpip_adapter_ip_info_t *ip_info)
{
    return ESP_OK;
}
