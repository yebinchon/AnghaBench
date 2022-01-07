
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Halt; int NoMoreSave; int AutoSaveConfigSpan; int SaveHaltEvent; } ;
typedef int THREAD ;
typedef TYPE_1__ SERVER ;


 int SiWriteConfigurationFile (TYPE_1__*) ;
 int Wait (int ,int ) ;

void SiSaverThread(THREAD *thread, void *param)
{
 SERVER *s = (SERVER *)param;

 if (thread == ((void*)0) || param == ((void*)0))
 {
  return;
 }

 while (s->Halt == 0)
 {

  if (s->NoMoreSave == 0)
  {
   SiWriteConfigurationFile(s);
  }

  Wait(s->SaveHaltEvent, s->AutoSaveConfigSpan);
 }
}
