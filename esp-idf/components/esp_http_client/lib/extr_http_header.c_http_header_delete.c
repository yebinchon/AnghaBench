
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* http_header_item_handle_t ;
typedef int http_header_handle_t ;
typedef int esp_err_t ;
struct TYPE_5__ {struct TYPE_5__* value; struct TYPE_5__* key; } ;


 int ESP_ERR_NOT_FOUND ;
 int ESP_OK ;
 int STAILQ_REMOVE (int ,TYPE_1__*,int ,int ) ;
 int free (TYPE_1__*) ;
 TYPE_1__* http_header_get_item (int ,char const*) ;
 int http_header_item ;
 int next ;

esp_err_t http_header_delete(http_header_handle_t header, const char *key)
{
    http_header_item_handle_t item = http_header_get_item(header, key);
    if (item) {
        STAILQ_REMOVE(header, item, http_header_item, next);
        free(item->key);
        free(item->value);
        free(item);
    } else {
        return ESP_ERR_NOT_FOUND;
    }
    return ESP_OK;
}
