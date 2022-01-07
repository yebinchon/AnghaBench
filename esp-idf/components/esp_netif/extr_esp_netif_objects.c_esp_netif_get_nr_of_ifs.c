
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t s_esp_netif_counter ;

size_t esp_netif_get_nr_of_ifs(void)
{
    return s_esp_netif_counter;
}
