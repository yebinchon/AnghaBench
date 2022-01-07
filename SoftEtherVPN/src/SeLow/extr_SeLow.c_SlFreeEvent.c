
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int event_handle; } ;
typedef TYPE_1__ SL_EVENT ;


 int SlFree (TYPE_1__*) ;
 int ZwClose (int ) ;

void SlFreeEvent(SL_EVENT *event)
{

 if (event == ((void*)0))
 {
  return;
 }

 ZwClose(event->event_handle);


 SlFree(event);
}
