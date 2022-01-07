
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int ref; } ;
struct TYPE_6__ {int UserCanceled; int CancelConnect; int Halt; int ForceStopFlag; int Thread; TYPE_2__* Connection; int HaltEvent; int Cancel1; int Name; } ;
typedef TYPE_1__ SESSION ;
typedef TYPE_2__ CONNECTION ;


 int AddRef (int ) ;
 int Cancel (int ) ;
 int Debug (char*,int ) ;
 int ReleaseConnection (TYPE_2__*) ;
 int Set (int ) ;
 int StopConnection (TYPE_2__*,int) ;
 scalar_t__ WaitThread (int ,int) ;

void StopSessionEx(SESSION *s, bool no_wait)
{

 if (s == ((void*)0))
 {
  return;
 }


 s->UserCanceled = 1;
 s->CancelConnect = 1;
 s->Halt = 1;

 Debug("Stop Session %s\n", s->Name);


 Cancel(s->Cancel1);


 Set(s->HaltEvent);


 if (s->Connection)
 {
  CONNECTION *c = s->Connection;
  AddRef(c->ref);
  StopConnection(c, no_wait);
  ReleaseConnection(c);
 }


 if (no_wait == 0)
 {
  while (1)
  {
   s->ForceStopFlag = 1;
   s->Halt = 1;
   if (WaitThread(s->Thread, 20))
   {
    break;
   }
  }
 }
 else
 {
  s->ForceStopFlag = 1;
  s->Halt = 1;
 }
}
