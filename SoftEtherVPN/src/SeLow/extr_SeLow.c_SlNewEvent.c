
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * event; int event_handle; } ;
typedef int SL_UNICODE ;
typedef TYPE_1__ SL_EVENT ;


 int FALSE ;
 int * IoCreateNotificationEvent (int ,int *) ;
 int KeClearEvent (int *) ;
 int KeInitializeEvent (int *,int ,int ) ;
 int NotificationEvent ;
 int SlFree (TYPE_1__*) ;
 int SlFreeUnicode (int *) ;
 int SlGetUnicode (int *) ;
 int * SlNewUnicode (char*) ;
 TYPE_1__* SlZeroMalloc (int) ;

SL_EVENT *SlNewEvent(char *name)
{
 SL_UNICODE *unicode_name;
 SL_EVENT *event;

 if (name == ((void*)0))
 {
  return ((void*)0);
 }


 unicode_name = SlNewUnicode(name);
 if (unicode_name == ((void*)0))
 {
  return ((void*)0);
 }


 event = SlZeroMalloc(sizeof(SL_EVENT));
 if (event == ((void*)0))
 {
  SlFreeUnicode(unicode_name);
  return ((void*)0);
 }


 event->event = IoCreateNotificationEvent(SlGetUnicode(unicode_name), &event->event_handle);
 if (event->event == ((void*)0))
 {
  SlFree(event);
  SlFreeUnicode(unicode_name);
  return ((void*)0);
 }


 KeInitializeEvent(event->event, NotificationEvent, FALSE);
 KeClearEvent(event->event);


 SlFreeUnicode(unicode_name);

 return event;
}
