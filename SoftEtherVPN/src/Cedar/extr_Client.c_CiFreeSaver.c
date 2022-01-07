
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Halt; int SaverHalter; int SaverThread; } ;
typedef TYPE_1__ CLIENT ;


 int INFINITE ;
 int ReleaseEvent (int ) ;
 int ReleaseThread (int ) ;
 int Set (int ) ;
 int WaitThread (int ,int ) ;

void CiFreeSaver(CLIENT *c)
{

 if (c == ((void*)0))
 {
  return;
 }

 c->Halt = 1;
 Set(c->SaverHalter);
 WaitThread(c->SaverThread, INFINITE);
 ReleaseThread(c->SaverThread);

 ReleaseEvent(c->SaverHalter);
}
