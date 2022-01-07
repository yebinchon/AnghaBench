
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* instance; } ;
typedef TYPE_1__ mdns_service_t ;
struct TYPE_5__ {char const* instance; char const* hostname; } ;


 TYPE_2__* _mdns_server ;
 int _str_null_or_empty (char const*) ;

__attribute__((used)) static const char * _mdns_get_service_instance_name(mdns_service_t * service)
{
    if (service && !_str_null_or_empty(service->instance)) {
        return service->instance;
    }

    if (_mdns_server && !_str_null_or_empty(_mdns_server->instance)) {
        return _mdns_server->instance;
    }

    if (_mdns_server && !_str_null_or_empty(_mdns_server->hostname)) {
        return _mdns_server->hostname;
    }

    return ((void*)0);
}
