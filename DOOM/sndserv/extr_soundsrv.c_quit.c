
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int I_ShutdownMusic () ;
 int I_ShutdownSound () ;
 int exit (int ) ;

void quit(void)
{
    I_ShutdownMusic();
    I_ShutdownSound();
    exit(0);
}
