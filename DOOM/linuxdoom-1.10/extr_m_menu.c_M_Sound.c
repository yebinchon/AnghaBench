
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M_SetupNextMenu (int *) ;
 int SoundDef ;

void M_Sound(int choice)
{
    M_SetupNextMenu(&SoundDef);
}
