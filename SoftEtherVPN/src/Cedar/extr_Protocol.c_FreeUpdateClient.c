
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int HaltFlag; int HaltEvent; int Thread; } ;
typedef TYPE_1__ UPDATE_CLIENT ;


 int Free (TYPE_1__*) ;
 int INFINITE ;
 int ReleaseEvent (int ) ;
 int ReleaseThread (int ) ;
 int Set (int ) ;
 int WaitThread (int ,int ) ;

void FreeUpdateClient(UPDATE_CLIENT *c)
{

 if (c == ((void*)0))
 {
  return;
 }


 c->HaltFlag = 1;
 Set(c->HaltEvent);


 WaitThread(c->Thread, INFINITE);

 ReleaseThread(c->Thread);
 ReleaseEvent(c->HaltEvent);

 Free(c);
}
