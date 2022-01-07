
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* http_header_item_handle_t ;
typedef int http_header_handle_t ;
typedef int esp_err_t ;
struct TYPE_3__ {int value; } ;


 int ESP_OK ;
 int free (int ) ;
 int http_header_delete (int ,char const*) ;
 TYPE_1__* http_header_get_item (int ,char const*) ;
 int http_header_new_item (int ,char const*,char const*) ;
 int http_utils_trim_whitespace (int *) ;
 int strdup (char const*) ;

esp_err_t http_header_set(http_header_handle_t header, const char *key, const char *value)
{
    http_header_item_handle_t item;

    if (value == ((void*)0)) {
        return http_header_delete(header, key);
    }

    item = http_header_get_item(header, key);

    if (item) {
        free(item->value);
        item->value = strdup(value);
        http_utils_trim_whitespace(&item->value);
        return ESP_OK;
    }
    return http_header_new_item(header, key, value);
}
