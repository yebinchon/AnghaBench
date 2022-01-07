
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int service; } ;
typedef TYPE_1__ mdns_srv_item_t ;
struct TYPE_7__ {char const* domain; char const* service; char const* proto; char const* host; } ;
typedef TYPE_2__ mdns_name_t ;
struct TYPE_8__ {char const* hostname; } ;


 char const* MDNS_DEFAULT_DOMAIN ;
 char* _mdns_get_service_instance_name (int ) ;
 TYPE_1__* _mdns_get_service_item (char const*,char const*) ;
 TYPE_3__* _mdns_server ;
 scalar_t__ _str_null_or_empty (char const*) ;
 scalar_t__ strcasecmp (char const*,char const*) ;

__attribute__((used)) static bool _mdns_name_is_ours(mdns_name_t * name)
{

    if (_str_null_or_empty(name->domain) || strcasecmp(name->domain, MDNS_DEFAULT_DOMAIN)) {
        return 0;
    }


    if (_str_null_or_empty(name->service) && _str_null_or_empty(name->proto)) {
        if (!_str_null_or_empty(name->host)
          && !_str_null_or_empty(_mdns_server->hostname)
          && strcasecmp(name->host, _mdns_server->hostname) == 0)
        {
            return 1;
        }
        return 0;
    }


    if (_str_null_or_empty(name->service) || _str_null_or_empty(name->proto)) {
        return 0;
    }


    mdns_srv_item_t * service = _mdns_get_service_item(name->service, name->proto);
    if (!service) {
        return 0;
    }


    if (_str_null_or_empty(name->host)) {
        return 1;
    }


    const char * instance = _mdns_get_service_instance_name(service->service);
    if (instance == ((void*)0)) {
        return 0;
    }


    if (strcasecmp(name->host, instance) == 0) {
        return 1;
    }

    return 0;
}
