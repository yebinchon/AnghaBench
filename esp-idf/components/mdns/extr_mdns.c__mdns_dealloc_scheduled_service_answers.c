
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int mdns_service_t ;
struct TYPE_4__ {struct TYPE_4__* next; int * service; } ;
typedef TYPE_1__ mdns_out_answer_t ;


 int free (TYPE_1__*) ;

__attribute__((used)) static void _mdns_dealloc_scheduled_service_answers(mdns_out_answer_t ** destination, mdns_service_t * service)
{
    mdns_out_answer_t * d = *destination;
    if (!d) {
        return;
    }
    while (d && d->service == service) {
        *destination = d->next;
        free(d);
        d = *destination;
    }
    while (d && d->next) {
        mdns_out_answer_t * a = d->next;
        if (a->service == service) {
            d->next = a->next;
            free(a);
        } else {
            d = d->next;
        }
    }
}
