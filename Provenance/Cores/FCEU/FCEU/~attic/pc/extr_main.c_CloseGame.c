
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CurGame ;
 int DriverKill () ;
 int FCEUI_CloseGame () ;
 int FCEUI_EndWaveRecord () ;
 int GUI_Hide (int ) ;
 int InputUserActiveFix () ;
 scalar_t__ isloaded ;
 scalar_t__ soundrecfn ;

int CloseGame(void)
{
 if(!isloaded) return(0);
 FCEUI_CloseGame();
 DriverKill();
 isloaded=0;
 CurGame=0;

 if(soundrecfn)
         FCEUI_EndWaveRecord();




 InputUserActiveFix();
 return(1);
}
