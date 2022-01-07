
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int event_handle; } ;
typedef TYPE_1__ NEO_EVENT ;


 int NeoFree (TYPE_1__*) ;
 int ZwClose (int ) ;

void NeoFreeEvent(NEO_EVENT *event)
{

 if (event == ((void*)0))
 {
  return;
 }

 ZwClose(event->event_handle);


 NeoFree(event);
}
