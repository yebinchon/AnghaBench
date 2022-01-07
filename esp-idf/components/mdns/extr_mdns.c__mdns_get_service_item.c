
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* next; TYPE_1__* service; } ;
typedef TYPE_2__ mdns_srv_item_t ;
struct TYPE_7__ {TYPE_2__* services; } ;
struct TYPE_5__ {int proto; int service; } ;


 TYPE_3__* _mdns_server ;
 int strcasecmp (int ,char const*) ;

__attribute__((used)) static mdns_srv_item_t * _mdns_get_service_item(const char * service, const char * proto)
{
    mdns_srv_item_t * s = _mdns_server->services;
    while (s) {
        if (!strcasecmp(s->service->service, service) && !strcasecmp(s->service->proto, proto)) {
            return s;
        }
        s = s->next;
    }
    return ((void*)0);
}
