
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int event; } ;
typedef TYPE_1__ NEO_EVENT ;


 int FALSE ;
 int KeSetEvent (int ,int ,int ) ;

void NeoSet(NEO_EVENT *event)
{

 if (event == ((void*)0))
 {
  return;
 }

 KeSetEvent(event->event, 0, FALSE);
}
