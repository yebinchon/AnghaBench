
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_5__ {int * result; int done_semaphore; } ;
typedef TYPE_1__ mdns_search_once_t ;
typedef int mdns_result_t ;
typedef int esp_err_t ;


 int ACTION_SEARCH_ADD ;
 int ESP_ERR_INVALID_ARG ;
 int ESP_ERR_INVALID_STATE ;
 int ESP_ERR_NO_MEM ;
 int ESP_OK ;
 int _mdns_search_free (TYPE_1__*) ;
 TYPE_1__* _mdns_search_init (char const*,char const*,char const*,int ,int ,size_t) ;
 scalar_t__ _mdns_send_search_action (int ,TYPE_1__*) ;
 int _mdns_server ;
 scalar_t__ _str_null_or_empty (char const*) ;
 int portMAX_DELAY ;
 int xSemaphoreTake (int ,int ) ;

esp_err_t mdns_query(const char * name, const char * service, const char * proto, uint16_t type, uint32_t timeout, size_t max_results, mdns_result_t ** results)
{
    mdns_search_once_t * search = ((void*)0);

    *results = ((void*)0);

    if (!_mdns_server) {
        return ESP_ERR_INVALID_STATE;
    }

    if (!timeout || _str_null_or_empty(service) != _str_null_or_empty(proto)) {
        return ESP_ERR_INVALID_ARG;
    }

    search = _mdns_search_init(name, service, proto, type, timeout, max_results);
    if (!search) {
        return ESP_ERR_NO_MEM;
    }

    if (_mdns_send_search_action(ACTION_SEARCH_ADD, search)) {
        _mdns_search_free(search);
        return ESP_ERR_NO_MEM;
    }
    xSemaphoreTake(search->done_semaphore, portMAX_DELAY);

    *results = search->result;
    _mdns_search_free(search);

    return ESP_OK;
}
