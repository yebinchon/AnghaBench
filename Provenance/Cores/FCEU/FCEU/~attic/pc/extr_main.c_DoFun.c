
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int int32 ;


 int FCEUD_Update (int *,int *,int ) ;
 int FCEUI_Emulate (int **,int **,int *,int) ;
 int FCEUI_EmulationPaused () ;
 scalar_t__ NoWaiting ;
 int SilenceSound (int) ;
 int frameskip ;

void DoFun(void)
{
         uint8 *gfx;
         int32 *sound;
         int32 ssize;
         static int fskipc=0;
         static int opause=0;





         if(NoWaiting) {gfx=0;}
         FCEUI_Emulate(&gfx, &sound, &ssize, fskipc);
         FCEUD_Update(gfx, sound, ssize);

         if(opause!=FCEUI_EmulationPaused())
         {
          opause=FCEUI_EmulationPaused();
    SilenceSound(opause);
         }
}
