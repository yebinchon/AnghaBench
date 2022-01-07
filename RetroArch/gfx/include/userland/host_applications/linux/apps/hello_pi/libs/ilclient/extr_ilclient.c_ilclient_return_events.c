
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* event_list; } ;
struct TYPE_7__ {TYPE_3__* client; TYPE_1__* list; } ;
struct TYPE_6__ {struct TYPE_6__* next; } ;
typedef TYPE_1__ ILEVENT_T ;
typedef TYPE_2__ COMPONENT_T ;


 int ilclient_lock_events (TYPE_3__*) ;
 int ilclient_unlock_events (TYPE_3__*) ;

void ilclient_return_events(COMPONENT_T *comp)
{
   ilclient_lock_events(comp->client);
   while (comp->list)
   {
      ILEVENT_T *next = comp->list->next;
      comp->list->next = comp->client->event_list;
      comp->client->event_list = comp->list;
      comp->list = next;
   }
   ilclient_unlock_events(comp->client);
}
