
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FCEUGI ;


 int CloseGame () ;
 int * CurGame ;
 int DriverInitialize (int *) ;
 int EO_AUTOHIDE ;
 int FCEUD_NetworkConnect () ;
 int FCEUI_BeginWaveRecord (scalar_t__) ;
 int * FCEUI_LoadGame (char const*,int) ;
 int GUI_Hide (int) ;
 int ParseGI (int *) ;
 int RefreshThrottleFPS () ;
 int eoptions ;
 int free (scalar_t__) ;
 int isloaded ;
 scalar_t__ soundrecfn ;

int LoadGame(const char *path)
{
 FCEUGI *tmp;

 CloseGame();
        if(!(tmp=FCEUI_LoadGame(path,1)))
  return 0;
 CurGame=tmp;
        ParseGI(tmp);
        RefreshThrottleFPS();

        if(!DriverInitialize(tmp))
         return(0);
 if(soundrecfn)
 {
  if(!FCEUI_BeginWaveRecord(soundrecfn))
  {
    free(soundrecfn);
   soundrecfn=0;
  }
 }
 isloaded=1;




 FCEUD_NetworkConnect();
 return 1;
}
