
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Queue; } ;
typedef int TUBEDATA ;
typedef TYPE_1__ TUBE ;


 int * GetNext (int ) ;
 int IsTubeConnected (TYPE_1__*) ;
 int LockQueue (int ) ;
 int UnlockQueue (int ) ;

TUBEDATA *TubeRecvAsync(TUBE *t)
{
 TUBEDATA *d;

 if (t == ((void*)0))
 {
  return ((void*)0);
 }

 if (IsTubeConnected(t) == 0)
 {
  return ((void*)0);
 }

 LockQueue(t->Queue);
 {
  d = GetNext(t->Queue);
 }
 UnlockQueue(t->Queue);

 return d;
}
