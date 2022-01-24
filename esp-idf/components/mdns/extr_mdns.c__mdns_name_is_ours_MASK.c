#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  service; } ;
typedef  TYPE_1__ mdns_srv_item_t ;
struct TYPE_7__ {char const* domain; char const* service; char const* proto; char const* host; } ;
typedef  TYPE_2__ mdns_name_t ;
struct TYPE_8__ {char const* hostname; } ;

/* Variables and functions */
 char const* MDNS_DEFAULT_DOMAIN ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (char const*,char const*) ; 
 TYPE_3__* _mdns_server ; 
 scalar_t__ FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char const*,char const*) ; 

__attribute__((used)) static bool FUNC4(mdns_name_t * name)
{
    //domain have to be "local"
    if (FUNC2(name->domain) || FUNC3(name->domain, MDNS_DEFAULT_DOMAIN)) {
        return false;
    }

    //if service and proto are empty, host must match out hostname
    if (FUNC2(name->service) && FUNC2(name->proto)) {
        if (!FUNC2(name->host)
          && !FUNC2(_mdns_server->hostname)
          && FUNC3(name->host, _mdns_server->hostname) == 0)
        {
            return true;
        }
        return false;
    }

    //if service or proto is empty, name is invalid
    if (FUNC2(name->service) || FUNC2(name->proto)) {
        return false;
    }

    //find the service
    mdns_srv_item_t * service = FUNC1(name->service, name->proto);
    if (!service) {
        return false;
    }

    //if host is empty and we have service, we have success
    if (FUNC2(name->host)) {
        return true;
    }

    //OK we have host in the name. find what is the instance of the service
    const char * instance = FUNC0(service->service);
    if (instance == NULL) {
        return false;
    }

    //compare the instance against the name
    if (FUNC3(name->host, instance) == 0) {
        return true;
    }

    return false;
}