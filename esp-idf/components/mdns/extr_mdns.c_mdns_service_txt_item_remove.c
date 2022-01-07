
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int portTickType ;
typedef int mdns_srv_item_t ;
struct TYPE_8__ {TYPE_3__* key; int * service; } ;
struct TYPE_9__ {TYPE_1__ srv_txt_del; } ;
struct TYPE_10__ {TYPE_2__ data; int type; } ;
typedef TYPE_3__ mdns_action_t ;
typedef int esp_err_t ;
struct TYPE_11__ {int action_queue; int services; } ;


 int ACTION_SERVICE_TXT_DEL ;
 int ESP_ERR_INVALID_ARG ;
 int ESP_ERR_NOT_FOUND ;
 int ESP_ERR_NO_MEM ;
 int ESP_OK ;
 int HOOK_MALLOC_FAILED ;
 int * _mdns_get_service_item (char const*,char const*) ;
 TYPE_7__* _mdns_server ;
 scalar_t__ _str_null_or_empty (char const*) ;
 int free (TYPE_3__*) ;
 scalar_t__ malloc (int) ;
 scalar_t__ pdPASS ;
 TYPE_3__* strdup (char const*) ;
 scalar_t__ xQueueSend (int ,TYPE_3__**,int ) ;

esp_err_t mdns_service_txt_item_remove(const char * service, const char * proto, const char * key)
{
    if (!_mdns_server || !_mdns_server->services || _str_null_or_empty(service) || _str_null_or_empty(proto) || _str_null_or_empty(key)) {
        return ESP_ERR_INVALID_ARG;
    }
    mdns_srv_item_t * s = _mdns_get_service_item(service, proto);
    if (!s) {
        return ESP_ERR_NOT_FOUND;
    }
    mdns_action_t * action = (mdns_action_t *)malloc(sizeof(mdns_action_t));
    if (!action) {
        HOOK_MALLOC_FAILED;
        return ESP_ERR_NO_MEM;
    }

    action->type = ACTION_SERVICE_TXT_DEL;
    action->data.srv_txt_del.service = s;
    action->data.srv_txt_del.key = strdup(key);
    if (!action->data.srv_txt_del.key) {
        free(action);
        return ESP_ERR_NO_MEM;
    }
    if (xQueueSend(_mdns_server->action_queue, &action, (portTickType)0) != pdPASS) {
        free(action->data.srv_txt_del.key);
        free(action);
        return ESP_ERR_NO_MEM;
    }
    return ESP_OK;
}
