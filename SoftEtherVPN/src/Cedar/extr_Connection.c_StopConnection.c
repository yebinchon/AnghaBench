
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Halt; int Thread; int FirstSock; int Name; } ;
typedef TYPE_1__ CONNECTION ;


 int Debug (char*,int ) ;
 int Disconnect (int ) ;
 int INFINITE ;
 int WaitThread (int ,int ) ;

void StopConnection(CONNECTION *c, bool no_wait)
{

 if (c == ((void*)0))
 {
  return;
 }

 Debug("Stop Connection: %s\n", c->Name);


 c->Halt = 1;
 Disconnect(c->FirstSock);

 if (no_wait == 0)
 {

  WaitThread(c->Thread, INFINITE);
 }
}
