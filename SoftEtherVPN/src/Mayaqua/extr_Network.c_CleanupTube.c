
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Lock; int TubePairData; int SockEvent; int Event; int Queue; } ;
typedef int TUBEDATA ;
typedef TYPE_1__ TUBE ;


 int DeleteLock (int ) ;
 int Free (TYPE_1__*) ;
 int FreeTubeData (int *) ;
 int * GetNext (int ) ;
 int ReleaseEvent (int ) ;
 int ReleaseQueue (int ) ;
 int ReleaseSockEvent (int ) ;
 int ReleaseTubePairData (int ) ;

void CleanupTube(TUBE *t)
{

 if (t == ((void*)0))
 {
  return;
 }

 while (1)
 {
  TUBEDATA *d = GetNext(t->Queue);
  if (d == ((void*)0))
  {
   break;
  }

  FreeTubeData(d);
 }

 ReleaseQueue(t->Queue);
 ReleaseEvent(t->Event);
 ReleaseSockEvent(t->SockEvent);

 ReleaseTubePairData(t->TubePairData);

 DeleteLock(t->Lock);

 Free(t);
}
