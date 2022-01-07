
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ max_results; scalar_t__ num_results; struct TYPE_4__* next; } ;
typedef TYPE_1__ mdns_search_once_t ;
struct TYPE_5__ {TYPE_1__* search_once; } ;


 int _mdns_search_finish (TYPE_1__*) ;
 TYPE_2__* _mdns_server ;

__attribute__((used)) static void _mdns_search_finish_done(void)
{
    mdns_search_once_t * search = _mdns_server->search_once;
    mdns_search_once_t * s = ((void*)0);
    while (search) {
        s = search;
        search = search->next;
        if (s->max_results && s->num_results >= s->max_results) {
            _mdns_search_finish(s);
        }
    }
}
