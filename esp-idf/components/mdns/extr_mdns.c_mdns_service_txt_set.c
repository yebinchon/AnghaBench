
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int portTickType ;
typedef int mdns_txt_linked_item_t ;
typedef int mdns_txt_item_t ;
typedef int mdns_srv_item_t ;
struct TYPE_7__ {int * txt; int * service; } ;
struct TYPE_8__ {TYPE_1__ srv_txt_replace; } ;
struct TYPE_9__ {TYPE_2__ data; int type; } ;
typedef TYPE_3__ mdns_action_t ;
typedef int esp_err_t ;
struct TYPE_10__ {int action_queue; int services; } ;


 int ACTION_SERVICE_TXT_REPLACE ;
 int ESP_ERR_INVALID_ARG ;
 int ESP_ERR_NOT_FOUND ;
 int ESP_ERR_NO_MEM ;
 int ESP_OK ;
 int HOOK_MALLOC_FAILED ;
 int * _mdns_allocate_txt (scalar_t__,int *) ;
 int _mdns_free_linked_txt (int *) ;
 int * _mdns_get_service_item (char const*,char const*) ;
 TYPE_6__* _mdns_server ;
 scalar_t__ _str_null_or_empty (char const*) ;
 int free (TYPE_3__*) ;
 scalar_t__ malloc (int) ;
 scalar_t__ pdPASS ;
 scalar_t__ xQueueSend (int ,TYPE_3__**,int ) ;

esp_err_t mdns_service_txt_set(const char * service, const char * proto, mdns_txt_item_t txt[], uint8_t num_items)
{
    if (!_mdns_server || !_mdns_server->services || _str_null_or_empty(service) || _str_null_or_empty(proto) || (num_items && txt == ((void*)0))) {
        return ESP_ERR_INVALID_ARG;
    }
    mdns_srv_item_t * s = _mdns_get_service_item(service, proto);
    if (!s) {
        return ESP_ERR_NOT_FOUND;
    }

    mdns_txt_linked_item_t * new_txt = ((void*)0);
    if (num_items){
        new_txt = _mdns_allocate_txt(num_items, txt);
        if (!new_txt) {
            return ESP_ERR_NO_MEM;
        }
    }

    mdns_action_t * action = (mdns_action_t *)malloc(sizeof(mdns_action_t));
    if (!action) {
        HOOK_MALLOC_FAILED;
        _mdns_free_linked_txt(new_txt);
        return ESP_ERR_NO_MEM;
    }
    action->type = ACTION_SERVICE_TXT_REPLACE;
    action->data.srv_txt_replace.service = s;
    action->data.srv_txt_replace.txt = new_txt;

    if (xQueueSend(_mdns_server->action_queue, &action, (portTickType)0) != pdPASS) {
        _mdns_free_linked_txt(new_txt);
        free(action);
        return ESP_ERR_NO_MEM;
    }
    return ESP_OK;
}
