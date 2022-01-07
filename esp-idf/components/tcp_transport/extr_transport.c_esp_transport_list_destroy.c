
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* esp_transport_list_handle_t ;
typedef int esp_err_t ;
struct TYPE_5__ {struct TYPE_5__* error_handle; } ;


 int ESP_OK ;
 int esp_transport_list_clean (TYPE_1__*) ;
 int free (TYPE_1__*) ;

esp_err_t esp_transport_list_destroy(esp_transport_list_handle_t h)
{
    esp_transport_list_clean(h);
    free(h->error_handle);
    free(h);
    return ESP_OK;
}
