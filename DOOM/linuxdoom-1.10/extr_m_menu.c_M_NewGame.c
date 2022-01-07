
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EpiDef ;
 int M_SetupNextMenu (int *) ;
 int M_StartMessage (int ,int *,int) ;
 int NEWGAME ;
 int NewDef ;
 scalar_t__ commercial ;
 int demoplayback ;
 scalar_t__ gamemode ;
 scalar_t__ netgame ;

void M_NewGame(int choice)
{
    if (netgame && !demoplayback)
    {
 M_StartMessage(NEWGAME,((void*)0),0);
 return;
    }

    if ( gamemode == commercial )
 M_SetupNextMenu(&NewDef);
    else
 M_SetupNextMenu(&EpiDef);
}
