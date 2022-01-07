
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int wiiu_hid_t ;
struct TYPE_6__ {scalar_t__ type; struct TYPE_6__* next; } ;
typedef TYPE_1__ wiiu_attach_event ;


 scalar_t__ HID_DEVICE_ATTACH ;
 int delete_attach_event (TYPE_1__*) ;
 int wiiu_hid_attach (int *,TYPE_1__*) ;
 int wiiu_hid_detach (int *,TYPE_1__*) ;

__attribute__((used)) static void wiiu_handle_attach_events(wiiu_hid_t *hid, wiiu_attach_event *list)
{
   wiiu_attach_event *event, *event_next = ((void*)0);

   if (!hid || !list)
      return;

   for (event = list; event != ((void*)0); event = event_next)
   {
      event_next = event->next;
      if (event->type == HID_DEVICE_ATTACH)
         wiiu_hid_attach(hid, event);
      else
         wiiu_hid_detach(hid, event);
      delete_attach_event(event);
   }
}
