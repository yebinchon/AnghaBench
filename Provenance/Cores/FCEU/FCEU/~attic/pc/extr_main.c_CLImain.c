
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CloseGame () ;
 int CreateDirs () ;
 scalar_t__ CurGame ;
 int DoArgs (int,char**) ;
 int DoFun () ;
 int DrBaseDirectory ;
 int DriverKill () ;
 int FCEUI_Initialize () ;
 int FCEUI_Kill () ;
 int FCEUI_SetBaseDirectory (int ) ;
 int FCEUI_SetNTSCTH (int ,int ,int ) ;
 int GetBaseDirectory () ;
 int LoadCPalette () ;
 int LoadConfig () ;
 int LoadGame (char*) ;
 int SaveConfig () ;
 int ShowUsage (char*) ;
 scalar_t__ cpalette ;
 int ntsccol ;
 int ntschue ;
 int ntsctint ;
 int strcmp (char*,char*) ;

int CLImain(int argc, char *argv[])
{
 int ret;

 if(!(ret=FCEUI_Initialize()))
         return(0);

        DrBaseDirectory=GetBaseDirectory();
 FCEUI_SetBaseDirectory(DrBaseDirectory);

 CreateDirs();




        if(argc<=1)

        {
         ShowUsage(argv[0]);
         return(0);
        }

        LoadConfig();
        DoArgs(argc-2,&argv[1]);
 FCEUI_SetNTSCTH(ntsccol, ntsctint, ntschue);
 if(cpalette)
  LoadCPalette();






        if(!LoadGame(argv[argc-1]))
        {
         DriverKill();
         return(0);
        }

 while(CurGame)
  DoFun();
        CloseGame();

 SaveConfig();

        FCEUI_Kill();


        return(1);
}
