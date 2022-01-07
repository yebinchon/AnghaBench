
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_6__ {scalar_t__ service; int * member_1; int * member_0; } ;
typedef TYPE_1__ mdns_srv_item_t ;
struct TYPE_7__ {scalar_t__ type; scalar_t__ service; struct TYPE_7__* next; } ;
typedef TYPE_2__ mdns_out_answer_t ;


 int free (TYPE_2__*) ;

__attribute__((used)) static void _mdns_dealloc_answer(mdns_out_answer_t ** destnation, uint16_t type, mdns_srv_item_t * service)
{
    mdns_out_answer_t * d = *destnation;
    if (!d) {
        return;
    }
    mdns_srv_item_t s = {((void*)0), ((void*)0)};
    if (!service) {
        service = &s;
    }
    if (d->type == type && d->service == service->service) {
        *destnation = d->next;
        free(d);
        return;
    }
    while (d->next) {
        mdns_out_answer_t * a = d->next;
        if (a->type == type && a->service == service->service) {
            d->next = a->next;
            free(a);
            return;
        }
        d = d->next;
    }
}
