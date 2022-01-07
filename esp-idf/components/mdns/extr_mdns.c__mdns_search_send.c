
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_5__ {struct TYPE_5__* next; } ;
typedef TYPE_1__ mdns_search_once_t ;
typedef int mdns_ip_protocol_t ;
typedef int mdns_if_t ;
struct TYPE_6__ {TYPE_1__* search_once; } ;


 scalar_t__ MDNS_IF_MAX ;
 scalar_t__ MDNS_IP_PROTOCOL_MAX ;
 int _mdns_search_send_pcb (TYPE_1__*,int ,int ) ;
 TYPE_2__* _mdns_server ;

__attribute__((used)) static void _mdns_search_send(mdns_search_once_t * search)
{
    mdns_search_once_t* queue = _mdns_server->search_once;
    bool found = 0;

    while (queue) {
        if (queue == search) {
            found = 1;
            break;
        }
        queue = queue->next;
    }

    if (!found) {

        return;
    }

    uint8_t i, j;
    for (i=0; i<MDNS_IF_MAX; i++) {
        for (j=0; j<MDNS_IP_PROTOCOL_MAX; j++) {
            _mdns_search_send_pcb(search, (mdns_if_t)i, (mdns_ip_protocol_t)j);
        }
    }
}
