
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_3__ {struct TYPE_3__* next; } ;
typedef TYPE_1__ mdns_srv_item_t ;
struct TYPE_4__ {TYPE_1__* services; } ;


 scalar_t__ MDNS_MAX_SERVICES ;
 TYPE_2__* _mdns_server ;

__attribute__((used)) static bool _mdns_can_add_more_services(void)
{
    mdns_srv_item_t * s = _mdns_server->services;
    uint16_t service_num = 0;
    while (s) {
        service_num ++;
        s = s->next;
        if (service_num >= MDNS_MAX_SERVICES) {
            return 0;
        }
    }

    return 1;
}
