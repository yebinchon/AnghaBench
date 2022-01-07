
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ mdns_search_once_t ;
struct TYPE_5__ {TYPE_1__* search_once; } ;


 TYPE_2__* _mdns_server ;

__attribute__((used)) static void _mdns_search_add(mdns_search_once_t * search)
{
    search->next = _mdns_server->search_once;
    _mdns_server->search_once = search;
}
