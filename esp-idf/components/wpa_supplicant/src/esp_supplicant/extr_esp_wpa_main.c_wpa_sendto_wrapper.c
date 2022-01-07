
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int esp_wifi_internal_tx (int ,void*,int ) ;

void wpa_sendto_wrapper(void *buffer, u16 len)
{
    esp_wifi_internal_tx(0, buffer, len);
}
