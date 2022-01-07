
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ wiiu_attach_event ;
typedef int uint32_t ;
struct TYPE_5__ {int list; } ;


 scalar_t__ SwapAtomic32 (int *,int ) ;
 TYPE_3__ events ;

__attribute__((used)) static void synchronized_add_event(wiiu_attach_event *event)
{
   wiiu_attach_event *head = (wiiu_attach_event *)SwapAtomic32((uint32_t *)&events.list, 0);

   event->next = head;
   head = event;

   SwapAtomic32((uint32_t *)&events.list, (uint32_t)head);
}
