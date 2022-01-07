
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int portTickType ;
typedef int mdns_search_once_t ;
typedef int mdns_action_type_t ;
struct TYPE_7__ {int * search; } ;
struct TYPE_8__ {TYPE_1__ search_add; } ;
struct TYPE_9__ {TYPE_2__ data; int type; } ;
typedef TYPE_3__ mdns_action_t ;
typedef int esp_err_t ;
struct TYPE_10__ {int action_queue; } ;


 int ESP_ERR_NO_MEM ;
 int ESP_OK ;
 int HOOK_MALLOC_FAILED ;
 TYPE_6__* _mdns_server ;
 int free (TYPE_3__*) ;
 scalar_t__ malloc (int) ;
 scalar_t__ pdPASS ;
 scalar_t__ xQueueSend (int ,TYPE_3__**,int ) ;

__attribute__((used)) static esp_err_t _mdns_send_search_action(mdns_action_type_t type, mdns_search_once_t * search)
{
    mdns_action_t * action = ((void*)0);

    action = (mdns_action_t *)malloc(sizeof(mdns_action_t));
    if (!action) {
        HOOK_MALLOC_FAILED;
        return ESP_ERR_NO_MEM;
    }

    action->type = type;
    action->data.search_add.search = search;
    if (xQueueSend(_mdns_server->action_queue, &action, (portTickType)0) != pdPASS) {
        free(action);
        return ESP_ERR_NO_MEM;
    }
    return ESP_OK;
}
