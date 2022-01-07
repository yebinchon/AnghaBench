
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Halt; int Lock; int Cedar; int Event; int Thread; } ;
typedef TYPE_1__ DDNS_CLIENT ;


 int DeleteLock (int ) ;
 int Free (TYPE_1__*) ;
 int INFINITE ;
 int ReleaseCedar (int ) ;
 int ReleaseEvent (int ) ;
 int ReleaseThread (int ) ;
 int Set (int ) ;
 int WaitThread (int ,int ) ;

void FreeDDNSClient(DDNS_CLIENT *c)
{

 if (c == ((void*)0))
 {
  return;
 }


 c->Halt = 1;
 Set(c->Event);

 WaitThread(c->Thread, INFINITE);
 ReleaseThread(c->Thread);

 ReleaseEvent(c->Event);

 ReleaseCedar(c->Cedar);
 DeleteLock(c->Lock);

 Free(c);
}
