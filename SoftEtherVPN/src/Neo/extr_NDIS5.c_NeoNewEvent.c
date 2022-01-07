
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int UNICODE ;
struct TYPE_5__ {int * event; int event_handle; } ;
typedef TYPE_1__ NEO_EVENT ;


 int FALSE ;
 int FreeUnicode (int *) ;
 int GetUnicode (int *) ;
 int * IoCreateNotificationEvent (int ,int *) ;
 int KeClearEvent (int *) ;
 int KeInitializeEvent (int *,int ,int ) ;
 int NeoFree (TYPE_1__*) ;
 TYPE_1__* NeoZeroMalloc (int) ;
 int * NewUnicode (char*) ;
 int NotificationEvent ;

NEO_EVENT *NeoNewEvent(char *name)
{
 UNICODE *unicode_name;
 NEO_EVENT *event;

 if (name == ((void*)0))
 {
  return ((void*)0);
 }


 unicode_name = NewUnicode(name);
 if (unicode_name == ((void*)0))
 {
  return ((void*)0);
 }


 event = NeoZeroMalloc(sizeof(NEO_EVENT));
 if (event == ((void*)0))
 {
  FreeUnicode(unicode_name);
  return ((void*)0);
 }


 event->event = IoCreateNotificationEvent(GetUnicode(unicode_name), &event->event_handle);
 if (event->event == ((void*)0))
 {
  NeoFree(event);
  FreeUnicode(unicode_name);
  return ((void*)0);
 }


 KeInitializeEvent(event->event, NotificationEvent, FALSE);
 KeClearEvent(event->event);


 FreeUnicode(unicode_name);

 return event;
}
