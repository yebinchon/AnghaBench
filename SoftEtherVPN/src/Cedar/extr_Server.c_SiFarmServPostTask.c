
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int TaskPostEvent; int TaskQueue; scalar_t__ Halting; } ;
struct TYPE_8__ {int CompleteEvent; int * Request; } ;
typedef int PACK ;
typedef TYPE_1__ FARM_TASK ;
typedef TYPE_2__ FARM_MEMBER ;


 int Free (TYPE_1__*) ;
 int InsertQueue (int ,TYPE_1__*) ;
 int LockQueue (int ) ;
 int NewEvent () ;
 int ReleaseEvent (int ) ;
 int Set (int ) ;
 int UnlockQueue (int ) ;
 TYPE_1__* ZeroMalloc (int) ;

FARM_TASK *SiFarmServPostTask(FARM_MEMBER *f, PACK *request)
{
 FARM_TASK *t;

 if (f == ((void*)0) || request == ((void*)0))
 {
  return ((void*)0);
 }

 t = ZeroMalloc(sizeof(FARM_TASK));
 t->CompleteEvent = NewEvent();
 t->Request = request;

 LockQueue(f->TaskQueue);
 {
  if (f->Halting)
  {

   UnlockQueue(f->TaskQueue);
   ReleaseEvent(t->CompleteEvent);
   Free(t);
   return ((void*)0);
  }

  InsertQueue(f->TaskQueue, t);
 }
 UnlockQueue(f->TaskQueue);

 Set(f->TaskPostEvent);

 return t;
}
