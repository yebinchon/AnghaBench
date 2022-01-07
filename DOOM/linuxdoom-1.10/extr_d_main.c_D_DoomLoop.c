
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mo; } ;


 size_t BACKUPTICS ;
 int D_Display () ;
 int D_DoAdvanceDemo () ;
 int D_ProcessEvents () ;
 int G_BeginRecording () ;
 int G_BuildTiccmd (int *) ;
 int G_Ticker () ;
 int I_InitGraphics () ;
 int I_StartFrame () ;
 int I_StartTic () ;
 int I_SubmitSound () ;
 int I_UpdateSound () ;
 scalar_t__ M_CheckParm (char*) ;
 int M_Ticker () ;
 int S_UpdateSounds (int ) ;
 int TryRunTics () ;
 scalar_t__ advancedemo ;
 int consoleplayer ;
 int debugfile ;
 scalar_t__ demorecording ;
 int fopen (char*,char*) ;
 int gametic ;
 size_t maketic ;
 int ** netcmds ;
 TYPE_1__* players ;
 int printf (char*,char*) ;
 scalar_t__ singletics ;
 int sprintf (char*,char*,int) ;

void D_DoomLoop (void)
{
    if (demorecording)
 G_BeginRecording ();

    if (M_CheckParm ("-debugfile"))
    {
 char filename[20];
 sprintf (filename,"debug%i.txt",consoleplayer);
 printf ("debug output to: %s\n",filename);
 debugfile = fopen (filename,"w");
    }

    I_InitGraphics ();

    while (1)
    {

 I_StartFrame ();


 if (singletics)
 {
     I_StartTic ();
     D_ProcessEvents ();
     G_BuildTiccmd (&netcmds[consoleplayer][maketic%BACKUPTICS]);
     if (advancedemo)
  D_DoAdvanceDemo ();
     M_Ticker ();
     G_Ticker ();
     gametic++;
     maketic++;
 }
 else
 {
     TryRunTics ();
 }

 S_UpdateSounds (players[consoleplayer].mo);


 D_Display ();



 I_UpdateSound();




 I_SubmitSound();

    }
}
