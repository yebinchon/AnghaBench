
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int SaverThread; int SaverHalter; } ;
typedef TYPE_1__ CLIENT ;


 int CiSaverThread ;
 int NewEvent () ;
 int NewThread (int ,TYPE_1__*) ;
 int WaitThreadInit (int ) ;

void CiInitSaver(CLIENT *c)
{

 if (c == ((void*)0))
 {
  return;
 }

 c->SaverHalter = NewEvent();

 c->SaverThread = NewThread(CiSaverThread, c);
 WaitThreadInit(c->SaverThread);
}
