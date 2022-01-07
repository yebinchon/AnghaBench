
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CurGame ;
 int DoConsoleCheatConfig () ;
 int InitKeyboard () ;
 int InitVideo (int ) ;
 int KillKeyboard () ;
 int KillVideo () ;
 int SilenceSound (int) ;

__attribute__((used)) static void DoCheatSeq(void)
{



 KillKeyboard();
 KillVideo();

 DoConsoleCheatConfig();
 InitVideo(CurGame);
 InitKeyboard();



}
