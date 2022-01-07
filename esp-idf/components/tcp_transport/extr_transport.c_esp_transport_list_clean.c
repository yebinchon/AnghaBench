
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* esp_transport_list_handle_t ;
typedef int * esp_transport_handle_t ;
typedef int esp_err_t ;
struct TYPE_3__ {int list; } ;


 int ESP_OK ;
 int * STAILQ_FIRST (int *) ;
 int STAILQ_INIT (int *) ;
 int * STAILQ_NEXT (int *,int ) ;
 int esp_transport_destroy (int *) ;
 int next ;

esp_err_t esp_transport_list_clean(esp_transport_list_handle_t h)
{
    esp_transport_handle_t item = STAILQ_FIRST(&h->list);
    esp_transport_handle_t tmp;
    while (item != ((void*)0)) {
        tmp = STAILQ_NEXT(item, next);
        esp_transport_destroy(item);
        item = tmp;
    }
    STAILQ_INIT(&h->list);
    return ESP_OK;
}
