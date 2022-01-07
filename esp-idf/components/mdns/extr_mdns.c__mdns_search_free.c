
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int done_semaphore; struct TYPE_4__* proto; struct TYPE_4__* service; struct TYPE_4__* instance; } ;
typedef TYPE_1__ mdns_search_once_t ;


 int free (TYPE_1__*) ;
 int vSemaphoreDelete (int ) ;

__attribute__((used)) static void _mdns_search_free(mdns_search_once_t * search)
{
    free(search->instance);
    free(search->service);
    free(search->proto);
    vSemaphoreDelete(search->done_semaphore);
    free(search);
}
