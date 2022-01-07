
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int D_QuitNetGame () ;
 int I_ShutdownGraphics () ;
 int I_ShutdownMusic () ;
 int I_ShutdownSound () ;
 int M_SaveDefaults () ;
 int exit (int ) ;

void I_Quit (void)
{
    D_QuitNetGame ();
    I_ShutdownSound();
    I_ShutdownMusic();
    M_SaveDefaults ();
    I_ShutdownGraphics();
    exit(0);
}
