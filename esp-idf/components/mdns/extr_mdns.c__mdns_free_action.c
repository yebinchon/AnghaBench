
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_9__ ;
typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_10__ ;


struct TYPE_21__ {TYPE_10__* packet; } ;
struct TYPE_20__ {int packet; } ;
struct TYPE_19__ {int search; } ;
struct TYPE_18__ {TYPE_10__* key; } ;
struct TYPE_17__ {TYPE_10__* value; TYPE_10__* key; } ;
struct TYPE_16__ {int txt; } ;
struct TYPE_15__ {TYPE_10__* instance; } ;
struct TYPE_14__ {TYPE_10__* service; } ;
struct TYPE_22__ {TYPE_8__ rx_handle; TYPE_7__ tx_handle; TYPE_6__ search_add; TYPE_5__ srv_txt_del; TYPE_4__ srv_txt_set; TYPE_3__ srv_txt_replace; TYPE_2__ srv_instance; TYPE_1__ srv_add; TYPE_10__* instance; TYPE_10__* hostname; } ;
struct TYPE_13__ {int type; TYPE_9__ data; int pb; int service; } ;
typedef TYPE_10__ mdns_action_t ;
 int _mdns_free_linked_txt (int ) ;
 int _mdns_free_service (int ) ;
 int _mdns_free_tx_packet (int ) ;
 int _mdns_search_free (int ) ;
 int free (TYPE_10__*) ;
 int pbuf_free (int ) ;

__attribute__((used)) static void _mdns_free_action(mdns_action_t * action)
{
    switch(action->type) {
    case 139:
        free(action->data.hostname);
        break;
    case 138:
        free(action->data.instance);
        break;
    case 133:
        _mdns_free_service(action->data.srv_add.service->service);
        free(action->data.srv_add.service);
        break;
    case 132:
        free(action->data.srv_instance.instance);
        break;
    case 130:
        _mdns_free_linked_txt(action->data.srv_txt_replace.txt);
        break;
    case 129:
        free(action->data.srv_txt_set.key);
        free(action->data.srv_txt_set.value);
        break;
    case 131:
        free(action->data.srv_txt_del.key);
        break;
    case 136:

    case 134:

    case 135:
        _mdns_search_free(action->data.search_add.search);
        break;
    case 128:
        _mdns_free_tx_packet(action->data.tx_handle.packet);
        break;
    case 137:
        pbuf_free(action->data.rx_handle.packet->pb);
        free(action->data.rx_handle.packet);
        break;
    default:
        break;
    }
    free(action);
}
