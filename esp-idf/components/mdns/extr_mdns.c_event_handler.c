
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int portTickType ;
struct TYPE_8__ {int interface; scalar_t__ event_id; scalar_t__ event_base; } ;
struct TYPE_9__ {TYPE_1__ sys_event; } ;
struct TYPE_10__ {TYPE_2__ data; int type; } ;
typedef TYPE_3__ mdns_action_t ;
struct TYPE_11__ {int esp_netif; } ;
typedef TYPE_4__ ip_event_got_ip6_t ;
typedef scalar_t__ int32_t ;
typedef scalar_t__ esp_event_base_t ;
struct TYPE_12__ {int action_queue; } ;


 int ACTION_SYSTEM_EVENT ;
 int HOOK_MALLOC_FAILED ;
 scalar_t__ IP_EVENT ;
 scalar_t__ IP_EVENT_GOT_IP6 ;
 TYPE_7__* _mdns_server ;
 scalar_t__ calloc (int,int) ;
 int free (TYPE_3__*) ;
 scalar_t__ pdPASS ;
 scalar_t__ xQueueSend (int ,TYPE_3__**,int ) ;

__attribute__((used)) static void event_handler(void* arg, esp_event_base_t event_base,
                     int32_t event_id, void* event_data)
{
    if (!_mdns_server) {
        return;
    }

    mdns_action_t * action = (mdns_action_t *)calloc(1, sizeof(mdns_action_t));
    if (!action) {
        HOOK_MALLOC_FAILED;
        return;
    }
    action->type = ACTION_SYSTEM_EVENT;
    action->data.sys_event.event_base = event_base;
    action->data.sys_event.event_id = event_id;
    if (event_base == IP_EVENT && event_id == IP_EVENT_GOT_IP6) {
        ip_event_got_ip6_t* event = (ip_event_got_ip6_t*) event_data;
        action->data.sys_event.interface = event->esp_netif;
    }

    if (xQueueSend(_mdns_server->action_queue, &action, (portTickType)0) != pdPASS) {
        free(action);
    }
}
