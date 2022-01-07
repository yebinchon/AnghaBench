
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* esp_transport_handle_t ;
typedef int esp_err_t ;
struct TYPE_5__ {struct TYPE_5__* scheme; int (* _destroy ) (TYPE_1__*) ;} ;


 int ESP_OK ;
 int free (TYPE_1__*) ;
 int stub1 (TYPE_1__*) ;

esp_err_t esp_transport_destroy(esp_transport_handle_t t)
{
    if (t->_destroy) {
        t->_destroy(t);
    }
    if (t->scheme) {
        free(t->scheme);
    }
    free(t);
    return ESP_OK;
}
