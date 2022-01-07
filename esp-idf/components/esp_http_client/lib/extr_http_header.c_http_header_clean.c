
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* http_header_item_handle_t ;
typedef int http_header_handle_t ;
typedef int esp_err_t ;
struct TYPE_6__ {struct TYPE_6__* value; struct TYPE_6__* key; } ;


 int ESP_OK ;
 TYPE_1__* STAILQ_FIRST (int ) ;
 int STAILQ_INIT (int ) ;
 TYPE_1__* STAILQ_NEXT (TYPE_1__*,int ) ;
 int free (TYPE_1__*) ;
 int next ;

esp_err_t http_header_clean(http_header_handle_t header)
{
    http_header_item_handle_t item = STAILQ_FIRST(header), tmp;
    while (item != ((void*)0)) {
        tmp = STAILQ_NEXT(item, next);
        free(item->key);
        free(item->value);
        free(item);
        item = tmp;
    }
    STAILQ_INIT(header);
    return ESP_OK;
}
