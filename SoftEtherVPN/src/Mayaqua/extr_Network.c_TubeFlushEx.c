
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int SockEvent; int Event; TYPE_1__* Queue; } ;
struct TYPE_5__ {scalar_t__ num_item; } ;
typedef TYPE_2__ TUBE ;


 int IsTubeConnected (TYPE_2__*) ;
 int Set (int ) ;
 int SetSockEvent (int ) ;

void TubeFlushEx(TUBE *t, bool force)
{

 if (t == ((void*)0))
 {
  return;
 }

 if (IsTubeConnected(t) == 0)
 {
  return;
 }

 if (force == 0)
 {
  if (t->Queue->num_item == 0)
  {
   return;
  }
 }

 Set(t->Event);
 SetSockEvent(t->SockEvent);
}
