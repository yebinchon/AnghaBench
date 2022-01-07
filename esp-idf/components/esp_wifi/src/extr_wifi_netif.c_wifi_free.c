
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int esp_wifi_internal_free_rx_buffer (void*) ;

__attribute__((used)) static void wifi_free(void *h, void* buffer)
{
    esp_wifi_internal_free_rx_buffer(buffer);
}
