
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Halt; struct TYPE_4__* DirName; int HaltEvent; int Thread; } ;
typedef TYPE_1__ ERASER ;


 int Free (TYPE_1__*) ;
 int INFINITE ;
 int ReleaseEvent (int ) ;
 int ReleaseThread (int ) ;
 int Set (int ) ;
 int WaitThread (int ,int ) ;

void FreeEraser(ERASER *e)
{

 if (e == ((void*)0))
 {
  return;
 }

 e->Halt = 1;
 Set(e->HaltEvent);
 WaitThread(e->Thread, INFINITE);
 ReleaseThread(e->Thread);
 ReleaseEvent(e->HaltEvent);

 Free(e->DirName);
 Free(e);
}
