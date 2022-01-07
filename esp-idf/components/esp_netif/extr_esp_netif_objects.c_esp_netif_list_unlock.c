
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int *) ;
 scalar_t__ s_esp_netif_counter ;
 int * s_list_lock ;
 int vQueueDelete (int *) ;
 int xSemaphoreGive (int *) ;

void esp_netif_list_unlock(void)
{
    assert(s_list_lock);
    xSemaphoreGive(s_list_lock);
    if (s_esp_netif_counter == 0) {
        vQueueDelete(s_list_lock);
        s_list_lock = ((void*)0);
    }
}
