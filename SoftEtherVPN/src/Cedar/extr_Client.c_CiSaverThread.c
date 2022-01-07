
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Halt; int SaverHalter; } ;
typedef int THREAD ;
typedef TYPE_1__ CLIENT ;


 int CLIENT_SAVER_INTERVAL ;
 int CiSaveConfigurationFile (TYPE_1__*) ;
 int NoticeThreadInit (int *) ;
 int Wait (int ,int ) ;

void CiSaverThread(THREAD *t, void *param)
{
 CLIENT *c = (CLIENT *)param;

 if (t == ((void*)0) || param == ((void*)0))
 {
  return;
 }

 NoticeThreadInit(t);


 while (c->Halt == 0)
 {
  Wait(c->SaverHalter, CLIENT_SAVER_INTERVAL);


  CiSaveConfigurationFile(c);
 }
}
