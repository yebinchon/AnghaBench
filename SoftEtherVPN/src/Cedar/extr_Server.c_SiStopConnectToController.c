
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Halt; int HaltEvent; int lock; int Thread; int Sock; } ;
typedef TYPE_1__ FARM_CONTROLLER ;


 int DeleteLock (int ) ;
 int Disconnect (int ) ;
 int Free (TYPE_1__*) ;
 int INFINITE ;
 int Lock (int ) ;
 int ReleaseEvent (int ) ;
 int ReleaseThread (int ) ;
 int Set (int ) ;
 int Unlock (int ) ;
 int WaitThread (int ,int ) ;

void SiStopConnectToController(FARM_CONTROLLER *f)
{

 if (f == ((void*)0))
 {
  return;
 }

 f->Halt = 1;


 Lock(f->lock);
 {
  Disconnect(f->Sock);
 }
 Unlock(f->lock);

 Set(f->HaltEvent);


 WaitThread(f->Thread, INFINITE);
 ReleaseThread(f->Thread);

 DeleteLock(f->lock);
 ReleaseEvent(f->HaltEvent);

 Free(f);
}
