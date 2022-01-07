
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KillJoysticks () ;
 int KillKeyboard () ;
 int KillMouse () ;
 int KillSound () ;
 int KillVideo () ;
 int SIG_IGN ;
 int SaveConfig () ;
 int SetSignals (int ) ;
 int inited ;

__attribute__((used)) static void DriverKill(void)
{
 SaveConfig();


 SetSignals(SIG_IGN);


 if(inited&2)
  KillJoysticks();
 if(inited&8)
  KillKeyboard();
 if(inited&4)
  KillVideo();
 if(inited&1)
  KillSound();
 if(inited&16)
  KillMouse();
 inited=0;
}
