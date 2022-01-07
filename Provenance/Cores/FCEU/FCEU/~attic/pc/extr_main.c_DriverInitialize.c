
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FCEUGI ;


 int CloseStuff ;
 scalar_t__ InitJoysticks () ;
 int InitKeyboard () ;
 int InitOtherInput () ;
 scalar_t__ InitSound (int *) ;
 int InitVideo (int *) ;
 int SetSignals (int ) ;
 int inited ;

__attribute__((used)) static int DriverInitialize(FCEUGI *gi)
{

 SetSignals(CloseStuff);






        if(!InitVideo(gi)) return 0;
        inited|=4;

 if(InitSound(gi))
  inited|=1;

 if(InitJoysticks())
  inited|=2;

 if(!InitKeyboard()) return 0;
 inited|=8;

 InitOtherInput();
 return 1;
}
