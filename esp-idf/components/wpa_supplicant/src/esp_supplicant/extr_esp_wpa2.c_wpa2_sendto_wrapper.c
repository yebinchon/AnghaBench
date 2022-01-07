
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int WIFI_IF_STA ;
 int esp_wifi_internal_tx (int ,void*,int ) ;

__attribute__((used)) static void wpa2_sendto_wrapper(void *buffer, uint16_t len)
{
    esp_wifi_internal_tx(WIFI_IF_STA, buffer, len);
}
